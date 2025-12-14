`timescale 1ns/10ps

module tb2_rca_rd();
reg [3:0] a,b;
reg cin;
wire ca;
wire [3:0]s;

rca_rd dut(a,b,cin,s,ca);
integer i;
initial
begin
cin=1'b0;
for (i=0;i<50;i=i+1)
begin
a=$urandom_range(0,15); b=$urandom_range(0,15);
#10;
end
#10;
$stop();
end
endmodule

