`timescale 1ns/1ps

module tb;

  // Общие входы
  reg clk = 0;
  reg ce  = 0;

  // Reset-ы раздельно
  reg clr = 0; // async reset для VCB2CE
  reg r   = 0; // sync reset для VCB2RE

  // Выходы async-модуля
  wire Q0_a, Q1_a, TC_a, CEO_a;

  // Выходы sync-модуля
  wire Q0_s, Q1_s, TC_s, CEO_s;

  // DUT: async reset
  VCB2CE dut_async (
    .ce(ce),
    .clk(clk),
    .clr(clr),
    .Q0(Q0_a),
    .Q1(Q1_a),
    .TC(TC_a),
    .CEO(CEO_a)
  );

  // DUT: sync reset
  VCB2RE dut_sync (
    .ce(ce),
    .clk(clk),
    .r(r),
    .Q0(Q0_s),
    .Q1(Q1_s),
    .TC(TC_s),
    .CEO(CEO_s)
  );

  // Clock: период 10 ns
  always #5 clk = ~clk;

  // Удобно дождаться фронта и чуть отступить
  task tick;
    begin
      @(posedge clk);
      #1;
    end
  endtask

  // Проверка флагов для одного экземпляра
  task check_flags;
    input q0, q1, tc, ceo;
    input reg  ce_in;
    input [127:0] tag;
    reg exp_tc, exp_ceo;
    begin
      exp_tc  = q0 & q1;
      exp_ceo = ce_in & exp_tc;

      if (tc !== exp_tc)
        $display("ERROR %s t=%0t: TC=%b exp=%b (Q1Q0=%b%b)", tag, $time, tc, exp_tc, q1, q0);

      if (ceo !== exp_ceo)
        $display("ERROR %s t=%0t: CEO=%b exp=%b (ce=%b TC=%b)", tag, $time, ceo, exp_ceo, ce_in, tc);
    end
  endtask

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    // Старт: разрешим счёт
    ce = 1;

    // 0) Приведём оба в ноль
    // async reset можно дать коротко
    clr = 1; #2; clr = 0;

    // sync reset нужно удержать до фронта
    r = 1; tick(); r = 0;

    // 1) Дадим посчитать несколько тактов, чтобы они совпали
    repeat (6) begin
      tick();
      check_flags(Q0_a, Q1_a, TC_a, CEO_a, ce, "ASYNC");
      check_flags(Q0_s, Q1_s, TC_s, CEO_s, ce, "SYNC ");
    end

    // 2) Самое важное: дергаем reset МЕЖДУ фронтами clk
    //    - async должен сброситься сразу
    //    - sync сбросится только на следующем posedge clk

    // Подождём, чтобы оказаться между фронтами (clk сейчас где-то в середине периода)
    #2;

    $display("---- Toggle resets between clock edges at t=%0t ----", $time);

    // Поднимаем оба reset
    clr = 1;
    r   = 1;

    // Через 1нс после поднятия reset проверим:
    // ASYNC уже обязан быть 00
    // SYNC может остаться прежним до ближайшего posedge clk
    #1;
    if ({Q1_a, Q0_a} !== 2'b00)
      $display("ERROR ASYNC t=%0t: expected immediate reset to 00, got %b%b", $time, Q1_a, Q0_a);

    // Для SYNC специально НЕ ругаемся тут, он может ещё не сброситься

    // Дождёмся ближайшего фронта clk — теперь SYNC обязан стать 00
    tick();
    if ({Q1_s, Q0_s} !== 2'b00)
      $display("ERROR SYNC  t=%0t: expected sync reset on clock to 00, got %b%b", $time, Q1_s, Q0_s);

    // Снимаем reset
    clr = 0;
    r   = 0;

    // 3) Ещё немного посчитаем после reset
    repeat (6) begin
      tick();
      check_flags(Q0_a, Q1_a, TC_a, CEO_a, ce, "ASYNC");
      check_flags(Q0_s, Q1_s, TC_s, CEO_s, ce, "SYNC ");
    end

    // 4) Проверим останов по ce=0
    ce = 0;
    repeat (4) begin
      tick();
      check_flags(Q0_a, Q1_a, TC_a, CEO_a, ce, "ASYNC");
      check_flags(Q0_s, Q1_s, TC_s, CEO_s, ce, "SYNC ");
    end

    $display("Simulation done.");
    $finish;
  end

endmodule
