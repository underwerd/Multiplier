class o_monitor;
  
  virtual out_if o_vif; //virtual interface declaration
  
  mailbox mon2scb;  //declaration of mailbox
  
  function new(virtual out_if o_vif,mailbox mon2scb);
    
    this.o_vif=o_vif;
    this.mon2scb=mon2scb;
       
  endfunction
  
  task main;
    repeat(1)begin

      transaction trans;  //handle of transaction class
      trans = new();      //consturctor or creating object for trans
      #2;
      trans.result   = o_vif.result;
      mon2scb.put(trans);
      trans.display_out("out_monitor");
      //trans.display("output_Monitor");
    end
  endtask
  
endclass
