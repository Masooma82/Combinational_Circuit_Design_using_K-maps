`timescale 1ns/10ps
module lab4a_tb;
logic [0:1] a1;
logic [0:1] b1;
logic r1;
logic g1;
logic bl1;
lab4a W(
.a(a1),
.b(b1),
.r(r1),
.g(g1),
.bl(bl1)
);
initial
begin
// Provide different combinations of the inputs to check validity of code
a1 = 00; b1 = 00;
#10;
a1 = 00; b1 = 01; 
#10;
a1 = 00; b1 = 10; 
#10;
a1 = 00; b1 = 11; 
#10;
a1 = 01; b1 = 00; 
#10;
a1 = 01; b1 = 01; 
#10;
a1 = 01; b1 = 10; 
#10
a1 = 01; b1 = 11; 
#10;
a1 = 10; b1 = 00;
#10;
a1 = 10; b1 = 01; 
#10;
a1 = 10; b1 = 10; 
#10;
a1 = 10; b1 = 11; 
#10;
a1 = 11; b1 = 00; 
#10;
a1 = 11; b1 = 01; 
#10;
a1 = 11; b1 = 10; 
#10
a1 = 11; b1 = 11; 
#10;
$stop;
end
endmodule
