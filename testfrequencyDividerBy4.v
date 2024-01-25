module TestFrequencyDividerBy4;
  reg clk;
  wire out; 
  FrequencyDividerBy4 dut (clk,out );
  initial begin
    clk = 0;
    $monitor("Time = %0t: Output = %b", $time, out);
    #100 $finish; 
  end
 always #5 clk = ~clk;   
endmodule