module sub_module2 (input a , input b , output y );
  assign y = a | b;
endmodule
module sub_module1 (input a , input b , output y );
  assign y = a & b;
endmodule

module multimod (input a , input b , input c , output y );
  wire net1;
  sub_module1 u1 (.a(a) , .b(b) , .y(net1));
  sub_module2 u2(.a(net1) , .b(c) , .y(y));
endmodule
