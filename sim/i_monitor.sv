class i_monitor;
  
  virtual in_if i_vif; //virtual interface declaration
  
  mailbox mon2rml;  //declaration of mailbox
  
  function new(virtual in_if i_vif,mailbox mon2rml);
    
    this.i_vif=i_vif;
    this.mon2rml=mon2rml;
       
  endfunction
  
  task main;
    repeat(1)begin
      transaction trans;  //handle of transaction class
      trans = new();      //consturctor or creating object for trans
      #2;
      trans.a     = i_vif.a  ;//sampling of data in monitor
      trans.b     = i_vif.b  ;
      mon2rml.put(trans);
      trans.display_in("input_monitor");
    end
  endtask
  
endclass
