`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2015 20:55:16
// Design Name: 
// Module Name: button_debouncer
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


module button_debouncer(
    input CLK,
    input INPUT_DB,     //Button to be debounced
    output OUTPUT_DB    //Button debounced
    );
    
    wire wire1; 
    wire wire2;
    
    mydff dff1 (CLK, INPUT_DB, wire1);
    mydff dff2 (CLK, wire1, wire2);
    
    reg wireOutput = 0;
    always @ (posedge CLK) begin
        if(wire1 & ~wire2) begin
            wireOutput = 1;
        end
        else begin
            wireOutput = 0;
        end
    end
   
   assign OUTPUT_DB = wireOutput;
    
endmodule
