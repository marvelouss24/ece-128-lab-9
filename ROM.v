`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 09:55:06 AM
// Design Name: 
// Module Name: ROM
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


module ROM(
    input [2:0] addr,
    output reg [3:0] data_out
);

always @(addr) begin
    case (addr)
        3'd0: data_out = 4'b0000;
        3'd1: data_out = 4'b0001;
        3'd2: data_out = 4'b0010;
        3'd3: data_out = 4'b0011;
        3'd4: data_out = 4'b0100;
        3'd5: data_out = 4'b0101;
        3'd6: data_out = 4'b0110;
        3'd7: data_out = 4'b0111;
    endcase
end
endmodule
