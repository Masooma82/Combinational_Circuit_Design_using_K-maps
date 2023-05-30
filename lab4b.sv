`timescale 1ns/10ps
module lab4b(input logic [3:0] num, input logic [2:0] sel, output logic a,b,c,d,e,f,g,an0,an1,an2,an3,an4,an5,an6,an7);
assign a = (~num[0] & ~num[1] & ~num[2] & num[3]) | (~num[0] & num[1] & ~num[2] & ~num[3]) | (num[0] & num[1] & ~num[2] & num[3]) | (num[0] & ~num[1] & num[2] & num[3]);
assign b = (num[1] & num[2] & ~num[3]) | (num[0] & num[2] & num[3]) | (~num[0] & num[1] & ~num[2] & num[3]) | (num[0] & num[1] & ~num[3]);
assign c = (num[0] & num[1] & num[2]) | (num[0] & num[1] & ~num[3]) | (~num[0] & ~num[1] & num[2] & ~num[3]);
assign d = (num[1] & num[2] & num[3]) | (num[0] & ~num[1] & num[2] & ~num[3]) | (~num[0] & num[1] & ~num[2] & ~num[3]) | (~num[0] & ~num[1] & ~num[2] & num[3]);
assign e = (~num[0] & num[3]) | (~num[0] & num[1] & ~num[2]) | (~num[1] & ~num[2] & num[3]);
assign f = (~num[0] & num[2] & num[3]) | (~num[0] & ~num[1] & num[2]) | (~num[0] & ~num[1] & num[3]) | (num[0] & num[1] & ~num[2] & num[3]);
assign g = (~num[0] & ~num[1] & ~num[2]) | (~num[0] & num[1] & num[2] & num[3]) | (num[0] & num[1] & ~num[2] & ~num[3]);
assign an0 = sel[0] | sel[1] | sel[2];
assign an1 = sel[0] | sel[1] | ~sel[2];
assign an2 = sel[0] | ~sel[1] | sel[2];
assign an3 = sel[0] | ~sel[1] | ~sel[2];
assign an4 = ~sel[0] | sel[1] | sel[2];
assign an5 = ~sel[0] | sel[1] | ~sel[2];
assign an6 = ~sel[0] | ~sel[1] | sel[2];
assign an7 = ~sel[0] | ~sel[1] | ~sel[2];
endmodule6k