class reference_model;
  
  mailbox mon2rml;  
  mailbox rml2scb;
  
  function new(mailbox mon2rml,mailbox rml2scb);
    this.mon2rml = mon2rml;
    this.rml2scb = rml2scb;
  endfunction
  
  task main;
    transaction r_trans;  //recv transaction from i_monitor
    transaction s_trans;  //send transaction to scoreboard      
    repeat(1)begin
        #3;
        mon2rml.get(r_trans);   // getting info from mailbox
        s_trans = new();
        logic signed [15:0] signed_a, signed_b;
        signed_a = r_trans.a;
        signed_b = r_trans.b;
        //reference_model
        s_trans.result   = signed_a * signed_b;

        rml2scb.put(s_trans);
        r_trans.display_in("reference_model");
        s_trans.display_out("reference_model");
        
      end  
  endtask
  
endclass
