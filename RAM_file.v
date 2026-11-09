`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2026 02:56:12 PM
// Design Name: 
// Module Name: RAM_file
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


module RAM_file(clk, we, data_in, addr, data_out);

parameter DATA_W = 8;
parameter SIZE = 8;
parameter ADDR_W = 3;

input clk, we;
input [ADDR_W - 1:0] addr;
input [DATA_W - 1:0] data_in;
output [DATA_W - 1:0] data_out;

reg[DATA_W - 1:0] memory[0:SIZE - 1];

initial begin
    $readmemb("ram_data.txt", memory);
end

always @ (posedge clk) begin
        if(we)
            memory[addr] <= data_in;
end

assign data_out = memory[addr];

endmodule
