module simple_ram (
    input logic clk,
    input logic we,               // Write Enable
    input logic [3:0] addr,       // 4-bit Address
    input logic [7:0] data_in,    // 8-bit Input Data
    output logic [7:0] data_out   // 8-bit Output Data
);

    // Memory array (16 x 8)
    logic [7:0] mem [15:0];

    // Write Operation (synchronous)
    always_ff @(posedge clk) begin
        if (we) begin
            mem[addr] <= data_in;
        end
    end

    // Read Operation (asynchronous)
    assign data_out = mem[addr];

endmodule
