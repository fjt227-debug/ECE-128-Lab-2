`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 01:05:58 PM
// Design Name: 
// Module Name: FourBitFARippleCarry
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


module FourBitFARippleCarry(A1,B1,CI,S1,CO);

input [3:0] A1,B1;
input CI;

output[3:0] S1;
output CO;

wire co0, co1, co2;

OneBitFullAdder FA0 (.A1(A1[0]), .B1(B1[0]), .CI(CI),.S1(S1[0]), .CO(co0));
OneBitFullAdder FA1 (.A1(A1[1]), .B1(B1[1]), .CI(co0),.S1(S1[1]), .CO(co1));
OneBitFullAdder FA2 (.A1(A1[2]), .B1(B1[2]), .CI(co1),.S1(S1[2]), .CO(co2));
OneBitFullAdder FA3 (.A1(A1[3]), .B1(B1[3]), .CI(co2),.S1(S1[3]), .CO(CO));




endmodule
