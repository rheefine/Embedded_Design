//20171593 Rhee Dong Hyun
module jk(J, K, CL, Q);
input J, K, CL;
output Q;
reg Q;
always @(negedge CL)
begin
if (!J && !K) Q <= Q;
else if (!J && K) Q <= 0;
else if (J && !K) Q <= 1;
else Q <= !Q;
end
endmodule