`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 09:55:06 AM
// Design Name: 
// Module Name: RAM
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


module RAM(clk, rst, we, data_in, addr, data_out);

parameter DATA_W = 8;
parameter SIZE = 8;
parameter ADDR_W = 3;

input clk, rst, we;
input [ADDR_W - 1:0] addr;
input [DATA_W - 1:0] data_in;
output reg [DATA_W - 1:0] data_out;

reg[DATA_W - 1:0] memory[0:SIZE - 1];

integer i;

always @ (posedge clk) begin
    if (rst) begin 
        for (i = 0; i < SIZE; i = i + 1) begin
            memory[i] <= 0;
        end
    end
    else begin
        if(we)
            memory[addr] <= data_in;
        else
            data_out <= memory[addr];
    end 
end

endmodule
