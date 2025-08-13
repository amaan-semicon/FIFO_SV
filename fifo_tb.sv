`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 00:40:10
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();

//signal_declarations
localparam DATA_WIDTH = 8;
localparam ADDR_WIDTH = 3;
localparam T = 10; //clock_period

logic clk, reset;
logic wr, rd;
logic [DATA_WIDTH - 1: 0] w_data, r_data;
logic full, empty;

//instantiate_module_under_test
fifo #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))  uut(.*);
// 10 ns clock running forever
always
    begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
        end
// reset for the first half cycle
initial
    begin   
        reset = 1'b1;
        rd = 1'b0;
        wr = 1'b0;
        @(negedge clk);
        reset = 1'b0;  
        end
// test vectors
initial
    begin
       //--------------EMPTY------------------
       //write
       @(negedge clk)
        w_data = 8'd5;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd8;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd2;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd0;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd9;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd3;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd6;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0;  
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd1;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0; 
        
        //write
        repeat(1) @(negedge clk);
        w_data = 8'd3;
        wr = 1'b1;
        @(negedge clk)
        wr = 1'b0; 
        
        //------------FULL----------------
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
        
        //read
        repeat(1) @(negedge clk);
        rd = 1'b1;
        @(negedge clk)
        rd = 1'b0;
   end
  
    
  
   
endmodule
