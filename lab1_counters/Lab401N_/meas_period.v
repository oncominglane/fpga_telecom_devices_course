`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:51 03/13/2026 
// Design Name: 
// Module Name:    meas_period 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module Meas_Period(
    input clk,
    input ce1ms,
    input sig_in,
    input rst,
    output reg [15:0] dat
);

reg sig_d1 = 0;
reg sig_d2 = 0;

reg [15:0] ms_cnt = 0;
reg [15:0] period_ms = 0;

reg [3:0] th = 0;
reg [3:0] hu = 0;
reg [3:0] te = 0;
reg [3:0] on = 0;

reg [15:0] rem;

// Синхронизация входного сигнала
always @(posedge clk) begin
    sig_d1 <= sig_in;
    sig_d2 <= sig_d1;
end

wire sig_rise = sig_d1 & ~sig_d2;

// Измерение периода в миллисекундах
always @(posedge clk) begin
    if (rst) begin
        ms_cnt <= 0;
        period_ms <= 0;
    end else begin
        if (ce1ms)
            ms_cnt <= ms_cnt + 1;

        if (sig_rise) begin
            period_ms <= ms_cnt;
            ms_cnt <= 0;
        end
    end
end

// Перевод period_ms в 4 десятичные цифры БЕЗ / и %
always @(*) begin
    rem = period_ms;

    // тысячи
    if (rem >= 16'd1000) begin
        th = 4'd1;
        rem = rem - 16'd1000;
    end else begin
        th = 4'd0;
    end

    // сотни
    if (rem >= 16'd900) begin
        hu = 4'd9; rem = rem - 16'd900;
    end else if (rem >= 16'd800) begin
        hu = 4'd8; rem = rem - 16'd800;
    end else if (rem >= 16'd700) begin
        hu = 4'd7; rem = rem - 16'd700;
    end else if (rem >= 16'd600) begin
        hu = 4'd6; rem = rem - 16'd600;
    end else if (rem >= 16'd500) begin
        hu = 4'd5; rem = rem - 16'd500;
    end else if (rem >= 16'd400) begin
        hu = 4'd4; rem = rem - 16'd400;
    end else if (rem >= 16'd300) begin
        hu = 4'd3; rem = rem - 16'd300;
    end else if (rem >= 16'd200) begin
        hu = 4'd2; rem = rem - 16'd200;
    end else if (rem >= 16'd100) begin
        hu = 4'd1; rem = rem - 16'd100;
    end else begin
        hu = 4'd0;
    end

    // десятки
    if (rem >= 16'd90) begin
        te = 4'd9; rem = rem - 16'd90;
    end else if (rem >= 16'd80) begin
        te = 4'd8; rem = rem - 16'd80;
    end else if (rem >= 16'd70) begin
        te = 4'd7; rem = rem - 16'd70;
    end else if (rem >= 16'd60) begin
        te = 4'd6; rem = rem - 16'd60;
    end else if (rem >= 16'd50) begin
        te = 4'd5; rem = rem - 16'd50;
    end else if (rem >= 16'd40) begin
        te = 4'd4; rem = rem - 16'd40;
    end else if (rem >= 16'd30) begin
        te = 4'd3; rem = rem - 16'd30;
    end else if (rem >= 16'd20) begin
        te = 4'd2; rem = rem - 16'd20;
    end else if (rem >= 16'd10) begin
        te = 4'd1; rem = rem - 16'd10;
    end else begin
        te = 4'd0;
    end

    // единицы
    if (rem >= 16'd9) begin
        on = 4'd9;
    end else if (rem >= 16'd8) begin
        on = 4'd8;
    end else if (rem >= 16'd7) begin
        on = 4'd7;
    end else if (rem >= 16'd6) begin
        on = 4'd6;
    end else if (rem >= 16'd5) begin
        on = 4'd5;
    end else if (rem >= 16'd4) begin
        on = 4'd4;
    end else if (rem >= 16'd3) begin
        on = 4'd3;
    end else if (rem >= 16'd2) begin
        on = 4'd2;
    end else if (rem >= 16'd1) begin
        on = 4'd1;
    end else begin
        on = 4'd0;
    end
end

// Формирование слова для DISPLAY
always @(*) begin
    dat[15:12] = th;
    dat[11:8]  = hu;
    dat[7:4]   = te;
    dat[3:0]   = on;
end

endmodule