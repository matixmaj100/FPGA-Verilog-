module test_bin2gray;
reg [3:0] a;
wire [3:0] b;
bin2gray test_bin (a,b);  
initial begin
    $display("TEST STARTED");
    a = 4'b0000; #5;
    if (b !== 4'b0000) begin
        $display("FAIL: a=0000, b=%b", b);
        $finish;
    end
    a = 4'b0001; #5;
    if (b !== 4'b0001) begin
        $display("FAIL: a=0001, b=%b", b);
        $finish;
    end
    a = 4'b0010; #5;
    if (b !== 4'b0011) begin
        $display("FAIL: a=0010, b=%b", b);
        $finish;
    end
    a = 4'b0011; #5;
    if (b !== 4'b0010) begin
        $display("FAIL: a=0011, b=%b", b);
        $finish;
    end
    a = 4'b0100; #5;
    if (b !== 4'b0110) begin
        $display("FAIL: a=0100, b=%b", b);
        $finish;
    end
    a = 4'b0101; #5;
    if (b !== 4'b0111) begin
        $display("FAIL: a=0101, b=%b", b);
        $finish;
    end
    a = 4'b0110; #5;
    if (b !== 4'b0101) begin
        $display("FAIL: a=0110, b=%b", b);
        $finish;
    end
    a = 4'b0111; #5;
    if (b !== 4'b0100) begin
        $display("FAIL: a=0111, b=%b", b);
        $finish;
    end
    a = 4'b1000; #5;
    if (b !== 4'b1100) begin
        $display("FAIL: a=1000, b=%b", b);
        $finish;
    end
    a = 4'b1001; #5;
    if (b !== 4'b1101) begin
        $display("FAIL: a=1001, b=%b", b);
        $finish;
    end
    a = 4'b1010; #5;
    if (b !== 4'b1111) begin
        $display("FAIL: a=1010, b=%b", b);
        $finish;
    end
    a = 4'b1011; #5;
    if (b !== 4'b1110) begin
        $display("FAIL: a=1011, b=%b", b);
        $finish;
    end
    a = 4'b1100; #5;
    if (b !== 4'b1010) begin
        $display("FAIL: a=1100, b=%b", b);
        $finish;
    end
   $display("TEST_SUCCESSFUll");
   $finish;
end
endmodule