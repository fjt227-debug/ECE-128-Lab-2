`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 12:49:23 PM
// Design Name: 
// Module Name: FourBitFACarryLookAhead
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


module FourBitFACarryLookAhead(A1,B1,CI,S1,CO);

input [3:0] A1,B1;
input CI;

output[3:0] S1;
output CO;

wire [3:0] G, P;
wire C1, C2, C3, C4;
//carry is propagated
assign P = A1 ^ B1; 
//carry is generated
assign G = A1 & B1;

assign C1 = G[0] | (P[0]&CI);
assign C2 = G[1] | (P[1]&C1);
assign C3 = G[2] | (P[2]&C2);
assign C4 = G[3] | (P[3]&C3);

OneBitFullAdder FA0 (.A1(A1[0]), .B1(B1[0]), .CI(CI), .S1(S1[0]));
OneBitFullAdder FA1 (.A1(A1[1]), .B1(B1[1]), .CI(C1), .S1(S1[1]));
OneBitFullAdder FA2 (.A1(A1[2]), .B1(B1[2]), .CI(C2), .S1(S1[2]));
OneBitFullAdder FA3 (.A1(A1[3]), .B1(B1[3]), .CI(C3), .S1(S1[3]));


assign CO = C4;

endmodule
