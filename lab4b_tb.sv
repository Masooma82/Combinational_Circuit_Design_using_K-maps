`timescale 1ns/10ps
module lab5_tb;
logic [3:0] num1;
logic [2:0] sel1;
logic a1;
logic b1;
logic c1;
logic d1;
logic e1;
logic f1;
logic g1;
logic an0_1;
logic an1_1;
logic an2_1;
logic an3_1;
logic an4_1;
logic an5_1;
logic an6_1;
logic an7_1;
lab5 W(
.num(num1),
.sel(sel1),
.a(a1),
.b(b1),
.c(c1),
.d(d1),
.e(e1),
.f(f1),
.g(g1),
.an0(an0_1),
.an1(an1_1),
.an2(an2_1),
.an3(an3_1),
.an4(an4_1),
.an5(an5_1),
.an6(an6_1),
.an7(an7_1)
);
initial
begin
// Provide different combinations of the inputs to check validity of code
num1 = 0000; sel1 = 000;
#10;
num1 = 1000; sel1 = 100; 
#10;
num1 = 0100; sel1 = 010; 
#10;
num1 = 1100; sel1 = 110; 
#10;
num1 = 1010; sel1 = 001; 
#10;
num1 = 0010; sel1 = 101; 
#10;
num1 = 1110; sel1 = 011; 
#10;
num1 = 0110; sel1 = 111; 
#10;
num1 = 0001; 
#10;
num1 = 1001; 
#10;
num1 = 0101; 
#10;
num1 = 1101;  
#10;
num1 = 1011;  
#10;
num1 = 0011;  
#10;
num1 = 1111;  
#10;
num1 = 0111;  
#10;
$stop;
end
endmodule
