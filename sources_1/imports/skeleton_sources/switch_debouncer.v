`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NUS ECE
// Engineer: Shahzor Ahmad
// 
// Create Date: 24.09.2015 21:24:46
// Design Name: 
// Module Name: switch_debouncer
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


module switch_debouncer(
    
    input CLK, 
    input pButton,  //this is the input to be debounced (Push Button)
    output reg pButtonState  //this is the debounced switch
);

// Synchronize the switch input to the clock
    reg pbSync0;
    reg pbSync1;
    always @(posedge CLK) pbSync0 <= pButton; 
    always @(posedge CLK) pbSync1 <= pbSync0;

// Debounce the switch
    reg [15:0] PB;
    
    always @(posedge CLK)
    if(pButtonState == pbSync1)
        PB <= 0;
    else
    begin
        PB <= PB + 1'b1;  
        if(PB == 16'hffff)
            pButtonState <= ~pButtonState;  
    end
endmodule














