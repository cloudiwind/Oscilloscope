`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NUS ECE
// Engineer: Shahzor Ahmad
// 
// Create Date: 02.10.2015 14:41:24
// Design Name: 
// Module Name: FSM_inc_dec
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


module FSM_inc_dec(
    
    input CLK_MAIN,

    input inc,                  // debounced inputs
    input dec,

    output reg [1:0] ctrl         
    );
    
    reg[1:0] state = 0; 
    reg[1:0] nextState;
    
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    
    always @ (*) begin
       case(state)
            S0: 
                if (inc)
                    nextState = dec ? S0 : S1;
                else 
                    nextState = dec ? S2 : S0;
            S1: 
                if (inc && ~dec)
                    nextState = S1;
                else
                    nextState = S0;
            S2: 
                if (dec && ~inc)
                    nextState = S2;
                else
                    nextState = S0;
       endcase
    end
    
    always @ (posedge CLK_MAIN) begin
        state <= nextState;
        ctrl <= state;
    end
endmodule