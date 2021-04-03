// ===========================================================================
// Verilog module generated by IPexpress
// Filename: ddr3_sdram_mem_top.v  
// Copyright 2011 (c) Lattice Semiconductor Corporation. All rights reserved.
// ===========================================================================

`timescale 1ns/100ps

module ddr3_sdram_mem_top_ddr3_ip_inst (

   // Clock and reset
   clk_in,
   rst_n,
   mem_rst_n,

   // Input signals from the User I/F  
   init_start,  
   cmd,
   addr,
   cmd_burst_cnt,
   cmd_valid,   
   ofly_burst_len, 
   write_data,
   data_mask,

   // Output signals to the User I/F
   cmd_rdy,
   datain_rdy,
   init_done,
   rt_err,
   wl_err,
   read_data,
   read_data_valid,

   // Output to external use
   sclk_out,
   clocking_good,

   // Memory side signals 
   em_ddr_reset_n,          
   em_ddr_data,
   em_ddr_dqs,
   em_ddr_clk,
   em_ddr_cke,
   em_ddr_ras_n,
   em_ddr_cas_n,
   em_ddr_we_n,
   em_ddr_cs_n,
   em_ddr_odt,
   em_ddr_dm,           
   em_ddr_ba,
   em_ddr_addr
);

// ====================================================================
// Port definition 
// ====================================================================
input                         clk_in;        // System reset
input                         rst_n;         // System reset
input                         mem_rst_n;      // reset to the memory

// Input signals from the User I/F  
input                         init_start; 
input   [3:0]                 cmd;
input   [26:0]                addr;
input   [4:0]                 cmd_burst_cnt;
input                         cmd_valid;
input                         ofly_burst_len;

input   [3:0]               write_data;
input   [0:0]                data_mask;
output  [3:0]               read_data /* synthesis syn_useioff = 0 */;


// Output signals to the User I/F
output                        cmd_rdy;
output                        datain_rdy;
output                        init_done;
output                        rt_err;
output                        wl_err;
output                        read_data_valid /* synthesis syn_useioff = 0 */;

output                        sclk_out;
output                        clocking_good;

// Memory side signals 
inout   [15:0]                em_ddr_data;
output                        em_ddr_reset_n;
inout   [1:0]                 em_ddr_dqs;
output  [1:0]                 em_ddr_dm;
output  [0:0]                 em_ddr_clk;
output  [0:0]                 em_ddr_cke;
output                        em_ddr_ras_n;
output                        em_ddr_cas_n;
output                        em_ddr_we_n;
output  [0:0]                 em_ddr_cs_n;
output  [0:0]                 em_ddr_odt;
output  [13:0]                em_ddr_addr;
output  [2:0]                 em_ddr_ba;

// ====================================================================
// Wires & Registers
// ====================================================================
wire                             sclk2x /* synthesis syn_keep=1 */;
wire                             eclk /* synthesis syn_keep=1 */;
wire                             sclk /* synthesis syn_keep=1 */;

wire                             cmd_rdy;  
wire                             datain_rdy;
wire                             init_done;  
wire                             rt_err;  
wire                             wl_err;  
wire    [63:0]                  read_data_tmp; 
wire                             read_data_valid_tmp; 
wire                             ddr_rst;
wire                             dll_update;
wire                             update_done;
wire                             dqsbuf_pause;

wire    [1:0]                 ddrdel_dq;   
wire                             clocking_good;
wire                             rst_p;   

wire    [3:0]                  read_data; 
wire                             read_data_valid; 

wire                             sclk_out;

wire    [15:0]                   em_ddr_data;
wire    [1:0]                    em_ddr_dqs;
wire    [0:0]                    em_ddr_clk;
wire                             em_ddr_reset_n;
wire                             em_ddr_ras_n;  
wire                             em_ddr_we_n;   
wire                             em_ddr_cas_n;  
wire    [0:0]                    em_ddr_cs_n;   
wire    [0:0]                    em_ddr_cke;    
wire    [0:0]                    em_ddr_odt;  
wire    [1:0]                    em_ddr_dm;   
wire    [2:0]                    em_ddr_ba; 
wire    [13:0]                   em_ddr_addr; 
wire    [7:0]                    dcntl;
wire                             ddrdel;
wire                             ddrdel_ck;
wire                             ddrdel_ca;


assign rst_p = ~rst_n;

assign sclk_out = sclk;

reg     [3:0]                read_data_int_r; 
reg     [3:0]                read_data_int_r1; 
reg     [3:0]                read_data_int_r2; 
reg                           read_data_valid_int_r; 
reg                           read_data_valid_int_r1; 
reg                           read_data_valid_int_r2; 

always @(negedge rst_n or posedge sclk) begin
   if (!rst_n) begin 
      read_data_valid_int_r  <= 1'b0;
      read_data_valid_int_r1 <= 1'b0;
      read_data_valid_int_r2 <= 1'b0;
      read_data_int_r        <= {3{1'b0}};
      read_data_int_r1       <= {3{1'b0}};
      read_data_int_r2       <= {3{1'b0}};
   end    
   else begin
      read_data_valid_int_r  <= read_data_valid_tmp;
      read_data_valid_int_r1 <= read_data_valid_int_r;
      read_data_valid_int_r2 <= read_data_valid_int_r1;
      read_data_int_r        <= read_data_tmp;
      read_data_int_r1       <= read_data_int_r;
      read_data_int_r2       <= read_data_int_r1;
   end  
end 

assign read_data_valid = read_data_valid_int_r1;
assign read_data       = read_data_int_r1;

//===================================================================


ddr3_ip_inst U1_ddr3_ip_inst (

   // Clock and reset
   .eclk               (eclk),
   .sclk               (sclk),
   .rst_n              (rst_n),
   .mem_rst_n          (mem_rst_n),

   // Input signals from the User I/F  
   .init_start         (init_start),  
   .cmd                (cmd),
   .addr               (addr),
   .cmd_burst_cnt      (cmd_burst_cnt),
   .cmd_valid          (cmd_valid),   
   .ofly_burst_len     (ofly_burst_len), 
   .write_data         (write_data),
   .data_mask          (data_mask),
   .ddr_rst            (ddr_rst),
   .dqsdel             (ddrdel_dq),
   .dqsbuf_pause       (dqsbuf_pause),
   .clocking_good      (clocking_good),
   .update_done        (update_done),

   // Output signals to the User I/F
   .cmd_rdy            (cmd_rdy),
   .datain_rdy         (datain_rdy),
   .init_done          (init_done),
   .rt_err             (rt_err),
   .wl_err             (wl_err),
   .read_data          (read_data_tmp),
   .read_data_valid    (read_data_valid_tmp),
   .dll_update         (dll_update),
   // Memory side signals 
   .em_ddr_reset_n     (em_ddr_reset_n),
   .em_ddr_data        (em_ddr_data),
   .em_ddr_dqs         (em_ddr_dqs),
   .em_ddr_clk         (em_ddr_clk),
   .em_ddr_cke         (em_ddr_cke),
   .em_ddr_ras_n       (em_ddr_ras_n),
   .em_ddr_cas_n       (em_ddr_cas_n),
   .em_ddr_we_n        (em_ddr_we_n),
   .em_ddr_cs_n        (em_ddr_cs_n),
   .em_ddr_odt         (em_ddr_odt),
   .em_ddr_dm          (em_ddr_dm),           
   .em_ddr_ba          (em_ddr_ba),
   .em_ddr_addr        (em_ddr_addr)
);

ddr_clks_ddr3_ip_inst U1_clocking (
   //inputs
   .rst_n              (rst_n),
   .clk_in             (clk_in), 
   .dll_update         (dll_update),

   //outputs
   .dqsbuf_pause       (dqsbuf_pause),
   .ddr_rst            (ddr_rst),
   .clocking_good      (clocking_good),                      
   .eclk               (eclk),
   .sclk               (sclk),
   .ddrdel             (ddrdel),
   .dcntl              (dcntl),
   .update_done        (update_done)
);                    

// ====================================================================
//  DDRDLL connections when ECLK is bridged
// ====================================================================
 assign ddrdel_dq = {2{ddrdel}};
 assign ddrdel_ca = ddrdel;
 assign ddrdel_ck = ddrdel;

endmodule
