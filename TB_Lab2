`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 01:40:04 PM
// Design Name: 
// Module Name: TB_Lab2
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


module TB_Lab2();

reg[3:0] A1,B1;
reg CI;
wire CO;
wire[3:0] S1;

FourBitFARippleCarry uut(.A1(A1),.B1(B1),.CI(CI),.S1(S1),.CO(CO));

integer i;
integer j;
initial begin
    A1 = 4'b0000;
    B1 = 4'b0000;
    for(i=0; i<15; i= i+1)begin
        A1 = A1 + 4'b0001;
        for(j=0; j<15; j=j+1)begin
            B1 = B1 + 4'b0001;
            CI = 1'b0;
            #10;
            B1 = B1 + 4'b0001;
            CI = 1'b1;
            #10;
        end
         
    end
    $stop;
end
endmodule
