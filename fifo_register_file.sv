`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 23:09:09
// Design Name: 
// Module Name: fifo_register_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo_register_file
#(parameter ADDR_WIDTH = 3, DATA_WIDTH = 8)
(
    input logic clk,
    input logic w_en,
    input logic [ADDR_WIDTH - 1 :0] r_addr, //reading_address
    input logic [ADDR_WIDTH - 1 :0] w_addr, //writing_address
    input logic [DATA_WIDTH - 1 :0] w_data,
    output logic [DATA_WIDTH - 1 :0] r_data
    
    );
    
  //signal_declarations
  logic [DATA_WIDTH - 1 : 0] memory[0 : 2**ADDR_WIDTH - 1];
  
  //write_operations
  always_ff@(posedge clk)
    begin
        if(w_en)
            memory[w_addr] <= w_data;
        end 
   //read_operations
   assign r_data = memory[r_addr];
endmodule
