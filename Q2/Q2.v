//20171593 Rhee Dong Hyun
module Q2(q0, q1, q2, q3, cl);
input cl;
output q0, q1, q2, q3;

jk U0 (~q3, q3, cl, q0);
jk U1 (q0, ~q0, cl, q1);
jk U2 (q1, ~q1, cl, q2);
jk U3 (q2, ~q2, cl, q3);

endmodule