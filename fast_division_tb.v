module fast_division_tb;

  reg [15:0] dividend;    // Testbench input: 16-bit dividend
  reg [7:0] divisor;      // Testbench input: 8-bit divisor
  wire [7:0] quotient;    // Testbench output: 8-bit quotient
  wire [7:0] remainder;   // Testbench output: 8-bit remainder
  wire done;              // Testbench output: Done flag
  
  // Instantiate the DUT (Device Under Test)
  fast_division dut (
    .dividend(dividend),
    .divisor(divisor),
    .quotient(quotient),
    .remainder(remainder),
    .done(done)
  );
  
  // Stimulus generation
  initial begin
    // Initialize inputs
    dividend = 16'b1010101010101010;
    divisor = 8'b01100110;
    
    // Wait for some time for the division to complete
    #10;
    
    // Display results
    $display("Dividend: %b", dividend);
    $display("Divisor: %b", divisor);
    $display("Quotient: %b", quotient);
    $display("Remainder: %b", remainder);
    $display("Done: %b", done);
    
    // End simulation
    $finish;
  end

endmodule
