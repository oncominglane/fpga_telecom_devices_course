`timescale 1ns/1ps

module tb;

  reg clk = 0;
  reg ce  = 0;
  reg clr = 0;

  wire Q0, Q1;
  wire TC, CEO;

  // DUT
  VCB2CE dut (
    .ce(ce),
    .clk(clk),
    .clr(clr),
    .Q0(Q0),
    .Q1(Q1),
    .TC(TC),
    .CEO(CEO)
  );

  // Clock: 10ns period
  always #5 clk = ~clk;

  // Удобная функция: ожидаем фронт clk
  task tick;
    begin
      @(posedge clk);
      #1; // маленькая задержка, чтобы сигналы успели обновиться (не обязательно, но удобно для проверок)
    end
  endtask

  // Проверка TC/CEO на каждом такте
  task check_flags;
    reg exp_tc, exp_ceo;
    begin
      exp_tc  = Q0 & Q1;
      exp_ceo = ce & exp_tc;

      if (TC !== exp_tc)
        $display("ERROR t=%0t: TC=%b exp=%b (Q1Q0=%b%b)", $time, TC, exp_tc, Q1, Q0);

      if (CEO !== exp_ceo)
        $display("ERROR t=%0t: CEO=%b exp=%b (ce=%b, TC=%b)", $time, CEO, exp_ceo, ce, TC);
    end
  endtask

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    // 1) Асинхронный сброс
    clr = 1;
    #2;
    clr = 0;

    // 2) Включаем счёт
    ce = 1;
    repeat (8) begin
      tick();
      check_flags();
    end

    // 3) Останавливаем счёт (ce=0) и убеждаемся что Q не меняются
    ce = 0;
    repeat (4) begin
      tick();
      check_flags();
    end

    // 4) Снова считаем
    ce = 1;
    repeat (6) begin
      tick();
      check_flags();
    end

    // 5) Сброс посередине (проверка асинхронности)
    #3 clr = 1;
    #2 clr = 0;
    tick();
    check_flags();

    $display("Simulation done.");
    $finish;
  end

endmodule
