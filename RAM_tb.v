`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2026 02:09:57 PM
// Design Name: 
// Module Name: RAM_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_tb;

parameter DATA_W = 8;
parameter SIZE = 8;
parameter ADDR_W = 3;

reg clk, rst, we;
reg [ADDR_W - 1:0] addr;
reg [DATA_W - 1:0] data_in;
wire [DATA_W - 1:0] data_out;

RAM uut (clk, rst, we, data_in, addr, data_out);

always #5 clk = ~clk;

initial begin 
    clk = 1'b0; rst = 1'b1; we = 1'b0; addr = 3'b0; data_in = 8'b0;
    
    #10 rst = 1'b0; we = 1'b1;
    
    for (integer i = 0; i < SIZE - 1; i = i + 1) begin
        data_in = data_in + 8'b1;
        addr = addr + 4'b1;
        #10;
    end 
    
    #5 we = 1'b0; addr = 3'b0;
    
    #10 for (integer i = 0; i < SIZE - 1; i = i + 1) begin
        addr = addr + 4'b1;
        #10;
    end 
    $stop;
    
end
endmodule
