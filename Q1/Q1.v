//201715193 Rhee Dong Hyun
module Q1(A0, A1, A2, A3, Y0, Y1, Y2, Y3);
input A0, A1, A2, A3;
output Y0, Y1, Y2, Y3;
assign Y0 = A0;
assign Y1 = A3 | ((~A2)&A1) | (A2&(~A1)&A0);
assign Y2 = (A2&(~A0)) | (A1&A2) | A3;
assign Y3 = (A2&A0) |(A1&A2) | A3;
endmodule