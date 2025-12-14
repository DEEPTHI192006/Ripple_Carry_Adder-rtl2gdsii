module rca_rd(a,b,cin,s,ca);
input [3:0]a,b;
input cin;
output [3:0] s;
output ca;
wire [2:0]c;

fa fa0(a[0],b[0],cin,s[0],c[0]);
fa fa1(a[1],b[1],c[0],s[1],c[1]);
fa fa2(a[2],b[2],c[1],s[2],c[2]);
fa fa3(a[3],b[3],c[2],s[3],ca);
endmodule
