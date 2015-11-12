`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2015 15:26:34
// Design Name: 
// Module Name: mydff
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


module mydff(
    input CLOCK, D,
    output reg Q
    );
    
    always @ (posedge CLOCK) begin
        Q <= D;
    end
    
endmodule