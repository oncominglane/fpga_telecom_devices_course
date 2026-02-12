`timescale 1ns/1ps

module tb;

  reg clk = 0;
  reg ce  = 0;
  reg clr = 0;

  wire Q0, Q1, Q2, Q3;
  wire TC, CEO;

  // DUT
  VCB4CE dut (
    .ce(ce),
    .clk(clk),
    .clr(clr),
    .Q0(Q0),
    .Q1(Q1),
    .Q2(Q2),
    .Q3(Q3),
    .TC(TC),
    .CEO(CEO)
  );

  // Clock 10 ns
  always #5 clk = ~clk;

  // Удобно ждать фронт
  task tick;
    begin
      @(posedge clk);
      #1;
    end
  endtask

  // Соберём шину для удобства
  wire [3:0] Q = {Q3, Q2, Q1, Q0};

  // Проверка одного шага
  task check_step;
    input [3:0] exp_q;
    reg exp_tc, exp_ceo;
    begin
      exp_tc  = &exp_q;        // 1 только если exp_q == 4'b1111
      exp_ceo = ce & exp_tc;

      if (Q !== exp_q)
        $display("ERROR t=%0t: Q=%b exp=%b", $time, Q, exp_q);

      if (TC !== exp_tc)
        $display("ERROR t=%0t: TC=%b exp=%b (Q=%b)", $time, TC, exp_tc, Q);

      if (CEO !== exp_ceo)
        $display("ERROR t=%0t: CEO=%b exp=%b (ce=%b Q=%b)", $time, CEO, exp_ceo, ce, Q);
    end
  endtask

  integer i;
  reg [3:0] exp;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    // 1) Reset
    ce  = 0;
    clr = 1;
    #2;
    clr = 0;

    // После reset на ближайшем фронте всё должно быть 0000 (а вообще async сбросит сразу)
    tick();
    exp = 4'h0;
    check_step(exp);

    // 2) Включаем счёт
    ce = 1;

    // Прогоним 0..15 два раза
    for (i = 0; i < 32; i = i + 1) begin
      tick();
      exp = exp + 1;           // ожидаем инкремент
      check_step(exp);
    end

    // 3) Проверим останов
    ce = 0;
    repeat (5) begin
      tick();
      check_step(exp);         // должно стоять
    end

    // 4) Снова запустим
    ce = 1;
    repeat (10) begin
      tick();
      exp = exp + 1;
      check_step(exp);
    end

    $display("Simulation done.");
    $finish;
  end

endmodule
