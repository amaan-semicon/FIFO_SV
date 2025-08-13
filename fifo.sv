`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 00:25:02
// Design Name: 
// Module Name: fifo
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


module fifo
    #(parameter ADDR_WIDTH = 3, DATA_WIDTH = 8)
(
    input logic clk, reset,
    input logic wr, rd,
    
    input logic [DATA_WIDTH - 1 : 0] w_data,
    output logic [DATA_WIDTH - 1 : 0] r_data,
    output logic full, empty
    );
    //signal_declarations
    logic [ADDR_WIDTH - 1: 0] w_addr, r_addr;
    
    //instantiate_register_file
   fifo_register_file
#(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH))

r_file_unit
(
    .w_en( wr & ~full),
    .*
    );
fifo_ctrl_file
#(.ADDR_WIDTH(ADDR_WIDTH)) ctrl_unit
(
    .*
    );

endmodule
