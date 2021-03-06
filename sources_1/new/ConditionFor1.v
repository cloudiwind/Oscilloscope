`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2015 17:13:27
// Design Name: 
// Module Name: ConditionFor1
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


module ConditionFor1(
    input [11:0] VGA_vertCoord,
    input [11:0] VGA_horzCoord,
    output OUTPUT
    );
    
    localparam startX = 85;        //Starting X-coord
    localparam startY = 150;        //Starting Y-Coord
    localparam hori_len = 20;
    localparam verti_len = 40;
    localparam hori_half_len = 10;
     
    assign OUTPUT = ((VGA_horzCoord == startX + hori_half_len) && (VGA_vertCoord > startY) && (VGA_vertCoord < startY + verti_len));

    
endmodule
