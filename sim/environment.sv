`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "i_monitor.sv"
`include "o_monitor.sv"
`include "reference_model.sv"
`include "scoreboard.sv"

class environment;
  generator       gen  ;
  driver          driv ;
  i_monitor       i_mon;
  o_monitor       o_mon;
  reference_model rml  ;
  scoreboard      scb  ;
  
  mailbox gen2drv;//gen to drv
  mailbox mon2rml;//i_mon to refe_model
  mailbox rml2scb;//refe_model to scoreboard
  mailbox mon2scb;//o_mon to scoreboard
  
  virtual in_if  i_intf;
  virtual out_if o_intf;
  function new(virtual in_if  i_intf,virtual out_if o_intf);
    this.i_intf = i_intf;
    this.o_intf = o_intf;
    
    gen2drv = new();
    mon2rml = new();
    rml2scb = new();
    mon2scb = new();
    
    gen   = new(gen2drv);
    driv  = new(i_intf,gen2drv);
    i_mon = new(i_intf,mon2rml);
    rml   = new(mon2rml,rml2scb);
    o_mon = new(o_intf,mon2scb);
    scb   = new(rml2scb,mon2scb);
    
  endfunction
  
  task test();
  	fork
      gen.main();
      driv.main();
      i_mon.main();
      rml.main();
      o_mon.main();
      scb.main();
    join
  endtask
  
  task run;
    repeat(1)begin
    test();
    #5;
    end
    $finish;
    
  endtask
  
endclass
