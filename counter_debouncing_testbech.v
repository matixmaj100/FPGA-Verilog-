module Counter_de_Test;

  reg clk;
  reg rst;
  wire [6:0] count;

  Counter_with_de dut (clk,rst,count );
  initial begin
    $monitor("Time=%0t count=%d", $time, count);
    clk = 0;
    rst = 0;
    #100 rst = 1; 
    #10 rst = 1;
    #15000 $finish;
  end

  always begin
    #5 clk = ~clk; // Generowanie sygna?u zegarowego
  end



endmodule