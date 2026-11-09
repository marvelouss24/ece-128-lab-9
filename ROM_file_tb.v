`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2026 03:24:38 PM
// Design Name: 
// Module Name: ROM_file_tb
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


module ROM_file_tb;

reg [2:0] addr;
wire [3:0] data_out;

ROM_file uut (addr, data_out);

initial begin 
addr = 3'b0;

#10 for (integer i = 0; i < 7; i = i + 1) begin
        addr = addr + 3'b1;
        #10;
    end 
    $stop;

end
endmodule
