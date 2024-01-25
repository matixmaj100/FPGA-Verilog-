module Counter_with_de (
  input clk,
  input rst,
  output reg [6:0] count = 99
);
  reg rst_prev;
  reg rst_p;
  reg rst_sync;
  reg [1:0] debounce_counter = 2'b00;
  always @(posedge clk) begin
    rst_sync <= rst ^rst_p;
    rst_p <= rst; 
    if (rst_sync & debounce_counter==2'b00) begin
      count <= 99;
      debounce_counter = 2'b11;
    end
    else if (count == 0) begin
      count <= 99;
    end
    else begin
      count <= count - 1;
      if (debounce_counter != 2'b00)
        debounce_counter <= debounce_counter - 1;
    end
  end
endmodule