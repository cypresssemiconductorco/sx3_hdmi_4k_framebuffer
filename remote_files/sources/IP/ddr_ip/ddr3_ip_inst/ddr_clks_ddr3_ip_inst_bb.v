
// ===========================================================================
// ===========================================================================
// Verilog module generated by IPexpress
// Filename: ddr_clks.v  
// Copyright 2011 (c) Lattice Semiconductor Corporation. All rights reserved.
// ===========================================================================


`timescale 1ns/1ps

module ddr_clks_ddr3_ip_inst (
   rst_n,
   clk_in,
   eclk,
   sclk,
   dll_update,
   update_done,
   dqsbuf_pause,
   ddr_rst,
   ddrdel,
   dcntl,
   clocking_good
   ) /* synthesis syn_black_box black_box_pad_pin="clk_in" */;   

input                        rst_n; 
input                        clk_in;   
input                        dll_update;
output                       eclk; 
output                       sclk;    
output                       clocking_good;
output                       dqsbuf_pause;
output                       ddr_rst;
output                       update_done;
output                       ddrdel;
output [7:0]                 dcntl;      

endmodule 



