class generator;
  transaction trans ;//Handle of Transaction class
  mailbox gen2drv; //mailbox declaration
  
  function new(mailbox gen2drv); // creation of mailbox and constructor
    this.gen2drv = gen2drv;
  endfunction
  
  task main;
    repeat(1)begin
      trans = new();              //object for transaction class
      trans.randomize();          //randomization of transaction
      trans.display_in("Generator"); //checking purposew 
      gen2drv.put(trans);          //putting data into mailbox
    end
  endtask
endclass
