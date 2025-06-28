RAM-design

To design RAM (Random Access Memory) in Verilog, here's a simple yet functional example of a single-port synchronous RAM. This kind of RAM can be written to and read from on the same clock edge.

🔧 RAM Design Specifications:
Data Width: 8 bits

Address Width: 4 bits (so, 2⁴ = 16 locations)

Synchronous Write

Asynchronous Read

🧠 RAM (Random Access Memory) Design in Verilog – Overview
🔸 What is RAM?
RAM is a volatile memory used to store and retrieve data quickly during program execution.

In digital design, it's commonly used in processors, FPGAs, and SoCs for temporary storage.


🔧 Key Characteristics in Verilog RAM Design
Feature	Description:
*Data Width               	Number of bits per memory location (e.g., 8 bits)
*Address Width	            Determines memory size (e.g., 4 bits → 16 locations)
*Synchronous Write	        Data is written on the rising/falling edge of a clock signal
*Asynchronous Read        	Data is available immediately when address changes (optional)
*Write Enable           	  Controls whether data is written or not


⚙️ Basic RAM Design Components
Input Signals: clk, we (write enable), addr, data_in

Output Signal: data_out

Memory Array: Declared using logic [n-1:0] mem [0:2^m-1];


📐 Types of RAM in Verilog
*Single-Port RAM

      One port for both read and write

*Dual-Port RAM

      Separate ports for reading and writing simultaneously

*Synchronous RAM

      Both read and write on clock edges

*Asynchronous RAM

      Immediate read without clock (less common in FPGA)


🧪 Simulation Considerations
   
    Use a testbench to write and read values.

    Verify correct data is stored and retrieved at expected addresses.

    Use tools like ModelSim, Vivado, or Icarus Verilog.


📈 Applications
Cache memory

Register files

Buffers and queues

FPGA block RAM (BRAM)

