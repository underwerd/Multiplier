class transaction;//packet class
  
//simulus are declared with rand keyword
  rand bit [15:0]a;
  rand bit [15:0]b;
  bit [31:0]result;
  
  function void display_in(string name);
    $display("-------------------------");
    $display("[%0t]ns %s ",$time,name);
    //$display("-------------------------");
    $display("a = %0d,   b = %0d",a,b);
    $display("-------------------------");  
  endfunction  
  
  function void display_out(string name);
    $display("-------------------------");
    $display("[%0t]ns %s ",$time,name);
    //$display("-------------------------");
    $display("result = %0d",result);
    $display("-------------------------");
  endfunction   
endclass








