class driver;
  
  virtual in_if i_vif;  //vif is a handle of virtual interface
  
  mailbox gen2drv;  //handle of mailbox
  
  function new(virtual in_if i_vif,mailbox gen2drv);
    this.i_vif=i_vif;
    this.gen2drv=gen2drv;
  endfunction
  
  task main;
    repeat(1)begin       
        transaction trans;  //handle of transaction class,to get the mailbox data
      	#1;
        gen2drv.get(trans);//getting trans data from mainbox
     
        i_vif.a   <= trans.a;
        i_vif.b   <= trans.b;
        trans.display_in("Driver");
      end
  endtask
  
endclass
