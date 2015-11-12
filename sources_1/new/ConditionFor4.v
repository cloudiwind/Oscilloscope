`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2015 17:14:04
// Design Name: 
// Module Name: ConditionFor4
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


module ConditionFor4(
 input [11:0] VGA_vertCoord,
    input [11:0] VGA_horzCoord,
    output OUTPUT
    );
    
    localparam startX = 85;        //Starting X-coord
    localparam startY = 150;        //Starting Y-Coord
    localparam hori_len = 20;
    localparam verti_len = 40;
    localparam hori_half_len = 10;
    localparam verti_half_len = 20;
     
    assign OUTPUT =
    ((VGA_vertCoord == startY + verti_half_len) && (VGA_horzCoord > startX) && (VGA_horzCoord < startX + hori_len) ) ||                                      
    ((VGA_horzCoord == startX + hori_len) && (VGA_vertCoord > startY) && (VGA_vertCoord < startY + verti_len)) ||                                 
    ((VGA_horzCoord == startX) && (VGA_vertCoord > startY) && (VGA_vertCoord < startY + verti_half_len));   
endmodule
