`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2015 11:40:55
// Design Name: 
// Module Name: ConditionForMyName
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


module ConditionForMyName(
    input [11:0] VGA_vertCoord,
    input [11:0] VGA_horzCoord,
    output NAME
    );
    
    localparam startX = 85;
    localparam startY = 95;
    localparam hori_len = 20;
    localparam verti_len = 40;
    localparam hori_half_len = 10;
    localparam verti_half_len = 20;
    localparam space = 30;
    
    wire CONDITION_FOR_C = 
    ((VGA_vertCoord == startY) && (VGA_horzCoord > startX) && (VGA_horzCoord < startX + hori_len)) ||                  //top horizontal
    ((VGA_vertCoord == startY + verti_len) && (VGA_horzCoord > startX) && (VGA_horzCoord < startX + hori_len)) ||    //bottom horizonal
    ((VGA_horzCoord == startX) && (VGA_vertCoord > startY) && (VGA_vertCoord < startY + verti_len));                    //middle vertical
    
    localparam Cl = startX + space;
    wire CONDITION_FOR_l =
    ((VGA_horzCoord == Cl) && (VGA_vertCoord > startY) && (VGA_vertCoord < startY + verti_len));                    //middle vertical
    
    localparam Clo = Cl + space - hori_len;
    wire CONDITION_FOR_o = 
    ((VGA_horzCoord == Clo) && (VGA_vertCoord > startY + verti_half_len) && (VGA_vertCoord < startY + verti_len)) ||     //left vertical    
    ((VGA_horzCoord == Clo + hori_len) && (VGA_vertCoord > startY + verti_half_len) && (VGA_vertCoord < startY + verti_len)) ||     //right vertical
    ((VGA_vertCoord == startY + verti_len) && (VGA_horzCoord > Clo) && (VGA_horzCoord < Clo + hori_len)) ||           //bottom horizontal
    ((VGA_vertCoord == startY + verti_half_len) && (VGA_horzCoord > Clo) && (VGA_horzCoord < Clo + hori_len));        //top horizontal
    
    localparam Clou = Clo + space;
    wire CONDITION_FOR_u =
    ((VGA_horzCoord == Clou) && (VGA_vertCoord > startY + verti_half_len) && (VGA_vertCoord < startY + verti_len)) ||     //left vertical    
    ((VGA_horzCoord == Clou + hori_len) && (VGA_vertCoord > startY + verti_half_len) && (VGA_vertCoord < startY + verti_len)) ||     //right vertical
    ((VGA_vertCoord == startY + verti_len) && (VGA_horzCoord > Clou) && (VGA_horzCoord < Clou + hori_len));           //bottom horizontal
    
    localparam Cloud = Clou + space;
    wire CONDITION_FOR_d =
    ((VGA_horzCoord == Cloud) && (VGA_vertCoord > startY + verti_half_len) && (VGA_vertCoord < startY + verti_len)) ||     //left vertical    
    ((VGA_horzCoord == Cloud + hori_len) && (VGA_vertCoord > startY) && (VGA_vertCoord < startY + verti_len)) ||     //right vertical
    ((VGA_vertCoord == startY + verti_len) && (VGA_horzCoord > Cloud) && (VGA_horzCoord < Cloud + hori_len)) ||           //bottom horizontal
    ((VGA_vertCoord == startY + verti_half_len) && (VGA_horzCoord > Cloud) && (VGA_horzCoord < Cloud + hori_len));        //top horizontal
    
    localparam Cloudi = Cloud + space;
    wire CONDITION_FOR_i =
    ((VGA_horzCoord == Cloudi) && (VGA_vertCoord > startY + verti_half_len) && (VGA_vertCoord < startY + verti_len)) ||   //middle vertical
    ((VGA_horzCoord == Cloudi) && (VGA_vertCoord > startY + verti_half_len - 10) && (VGA_vertCoord < startY + verti_half_len - 4));   //middle dot
    
    assign NAME = CONDITION_FOR_C | CONDITION_FOR_l | CONDITION_FOR_o | CONDITION_FOR_u | CONDITION_FOR_d | CONDITION_FOR_i;
    
endmodule
