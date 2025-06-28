module tb_ram;
  reg clk, we;
  reg [3:0] addr;
  reg [7:0] din;
  wire [7:0] dout;

  ram uut (.clk(clk), .we(we), .addr(addr), .din(din), .dout(dout));

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Simulation & waveform dump
  initial begin
    $dumpfile("dump.vcd");    // Create VCD file
    $dumpvars(0, tb_ram);     // Dump all variables in tb_ram

    // Write 8'hA5 to address 4
    we = 1; addr = 4; din = 8'hA5; #10;

    // Read from address 4
    we = 0; addr = 4; #10;

    $finish;
  end
endmodule
