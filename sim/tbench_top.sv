`include "input_interface.sv"
`include "output_interface.sv"
`include "test.sv"

module tbench_top;
  in_intf  i_intf();
  out_intf o_intf();
  
  test t1(i_intf,o_intf);
  
  Multiplier h1(
    .Multiplicant(i_intf.a),
    .Multiplier(i_intf.b),
    .result(out_intf.result)
  
  );
  
endmodule
