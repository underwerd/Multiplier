class scoreboard;
  
  mailbox rml2scb;  
  mailbox mon2scb; 
  
  function new(mailbox rml2scb,mailbox mon2scb);
    this.rml2scb = rml2scb;
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    repeat(1)begin
      transaction rml_tr; //handle of transaction class
      transaction o_mon_tr;        
      #4;
      rml2scb.get(rml_tr);   // getting info from mailbox
      mon2scb.get(o_mon_tr);
      rml_tr.display_out("scoreboard_reference");
      o_mon_tr.display_out("scoreboard_actrue");

      if(rml_tr.result==o_mon_tr.result)  //reference model
        $display("Result is as Expected");
      else
        $display("Error Result!");
      $display("---------------------------------------------------------------");
    end
  endtask
  
endclass
