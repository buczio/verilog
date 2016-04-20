`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2016 11:12:20 PM
// Design Name: 
// Module Name: fourbitadder
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


module fourbitadder(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] SUM,
    input C_out
    );
    
    adder1bit ADD1(A[0], B[0], C_in, SUM[0],C1);
    adder1bit ADD2(A[1], B[1], C1, SUM[1],C2);
    adder1bit ADD3(A[2], B[2], C2, SUM[2],C3);
    adder1bit ADD4(A[3], B[3], C3, SUM[3],C_out);
    
endmodule
