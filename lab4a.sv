`timescale 1ns/10ps
module lab4a(input logic [0:1] a,b, output logic r,g,bl);
assign r = ((~a[0] & ~a[1]) | (b[0] & b[1])) | ((~a[0] &  b[1]) | (~a[0] & b[0])) | (~a[1] & b[0]);
assign g = (a[0] & ~b[0]) | (~a[0] & b[0]) | (~a[1] & b[1]) | (a[1] & ~b[1]);
assign bl =  (~b[0] | a[0]) & (~b[1] | a[1]) | (a[0] & ~b[0]);
endmodule