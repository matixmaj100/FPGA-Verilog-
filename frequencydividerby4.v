module FrequencyDividerBy4 (
  input  clk,
  output reg out=0
);

  reg  count='b1;

  always @(posedge clk) begin
    if (count == 'b1) begin
      count <= 'b0;
      out <= ~out;
    end
    else begin
      count <= count + 1;
    end
  end
endmodule