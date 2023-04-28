module Q3(A, B, Ci, S, Co);
input [3:0] A, B;
input Ci;
output [4:0]S;
output Co;
wire [3:0]tmp, tmpA;
wire Co1;
adder_4bit adder1(A,B,Ci,tmp,Co1);
assign Co = (tmp[1]&tmp[3]) | (tmp[2]&tmp[3]) | Co1;
assign tmpA[0] = 0;
assign tmpA[1] = Co;
assign tmpA[2] = Co;
assign tmpA[3] = 0;
adder_4bit adder2(tmpA,tmp,0,S[3:0],S[4]);
endmodule