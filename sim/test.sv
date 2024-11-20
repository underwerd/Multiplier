`include "environment.sv"
program test(in_if  i_intf,out_if o_intf);
	environment env;
    
  	initial begin
      env = new(i_intf,o_intf);
      env.run();
    end
  
endprogram

