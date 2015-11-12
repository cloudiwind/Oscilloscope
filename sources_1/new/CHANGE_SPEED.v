`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2015 16:41:51
// Design Name: 
// Module Name: CHANGE_SPEED
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


module CHANGE_SPEED(
    
    input [2:0] SUBSAMPLE_ID,
    
    output reg OP0,
    output reg OP1,
    output reg OP2,
    output reg OP3,
    output reg OP4,
    output reg OP5,
    output reg OP6,
    output reg OP7
    );
    
    always @ (SUBSAMPLE_ID) begin
        
        OP0 = 0;
        OP1 = 0;
        OP2 = 0;
        OP3 = 0;
        OP4 = 0;
        OP5 = 0;
        OP6 = 0;
        OP7 = 0;
        
        case(SUBSAMPLE_ID)
            0: OP0 <= 1;
            1: OP1 <= 1;
            2: OP2 <= 1;
            3: OP3 <= 1;
            4: OP4 <= 1;
            5: OP5 <= 1;
            6: OP6 <= 1;
            7: OP7 <= 1;
        endcase    
    end
    
endmodule
