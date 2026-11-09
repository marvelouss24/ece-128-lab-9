`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2026 03:24:38 PM
// Design Name: 
// Module Name: ROM_file
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


module ROM_file(
    input [2:0] addr,
    output [3:0] data_out
);

reg [3:0] memory [0:7];

initial begin
    $readmemb("rom_data.txt", memory);
end

assign data_out = memory[addr];

endmodule
