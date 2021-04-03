//Verilog instantiation template

ddr_ip _inst (.slfifo_fifo_Data(), .slfifo_fifo_Q(), .slfifo_fifo_AlmostFull(), 
       .slfifo_fifo_Empty(), .slfifo_fifo_Full(), .slfifo_fifo_RPReset(), 
       .slfifo_fifo_RdClock(), .slfifo_fifo_RdEn(), .slfifo_fifo_Reset(), 
       .slfifo_fifo_WrClock(), .slfifo_fifo_WrEn(), .i2s_rx_fifo_Data(), 
       .i2s_rx_fifo_Q(), .i2s_rx_fifo_RCNT(), .i2s_rx_fifo_WCNT(), .i2s_rx_fifo_AlmostEmpty(), 
       .i2s_rx_fifo_Empty(), .i2s_rx_fifo_Full(), .i2s_rx_fifo_RPReset(), 
       .i2s_rx_fifo_RdClock(), .i2s_rx_fifo_RdEn(), .i2s_rx_fifo_Reset(), 
       .i2s_rx_fifo_WrClock(), .i2s_rx_fifo_WrEn(), .ddr3_ip_inst_addr(), 
       .ddr3_ip_inst_cmd(), .ddr3_ip_inst_cmd_burst_cnt(), .ddr3_ip_inst_data_mask(), 
       .ddr3_ip_inst_em_ddr_addr(), .ddr3_ip_inst_em_ddr_ba(), .ddr3_ip_inst_em_ddr_cke(), 
       .ddr3_ip_inst_em_ddr_clk(), .ddr3_ip_inst_em_ddr_cs_n(), .ddr3_ip_inst_em_ddr_data(), 
       .ddr3_ip_inst_em_ddr_dm(), .ddr3_ip_inst_em_ddr_dqs(), .ddr3_ip_inst_em_ddr_odt(), 
       .ddr3_ip_inst_read_data(), .ddr3_ip_inst_write_data(), .ddr3_ip_inst_clk_in(), 
       .ddr3_ip_inst_clocking_good(), .ddr3_ip_inst_cmd_rdy(), .ddr3_ip_inst_cmd_valid(), 
       .ddr3_ip_inst_datain_rdy(), .ddr3_ip_inst_em_ddr_cas_n(), .ddr3_ip_inst_em_ddr_ras_n(), 
       .ddr3_ip_inst_em_ddr_reset_n(), .ddr3_ip_inst_em_ddr_we_n(), .ddr3_ip_inst_init_done(), 
       .ddr3_ip_inst_init_start(), .ddr3_ip_inst_mem_rst_n(), .ddr3_ip_inst_ofly_burst_len(), 
       .ddr3_ip_inst_read_data_valid(), .ddr3_ip_inst_rst_n(), .ddr3_ip_inst_rt_err(), 
       .ddr3_ip_inst_sclk_out(), .ddr3_ip_inst_wl_err(), .hdmi_uv_fifo_Data(), 
       .hdmi_uv_fifo_Q(), .hdmi_uv_fifo_RCNT(), .hdmi_uv_fifo_AlmostEmpty(), 
       .hdmi_uv_fifo_Empty(), .hdmi_uv_fifo_Full(), .hdmi_uv_fifo_RPReset(), 
       .hdmi_uv_fifo_RdClock(), .hdmi_uv_fifo_RdEn(), .hdmi_uv_fifo_Reset(), 
       .hdmi_uv_fifo_WrClock(), .hdmi_uv_fifo_WrEn(), .cam_in_fifo_Data(), 
       .cam_in_fifo_Q(), .cam_in_fifo_RCNT(), .cam_in_fifo_Empty(), .cam_in_fifo_Full(), 
       .cam_in_fifo_RPReset(), .cam_in_fifo_RdClock(), .cam_in_fifo_RdEn(), 
       .cam_in_fifo_Reset(), .cam_in_fifo_WrClock(), .cam_in_fifo_WrEn(), 
       .line_uv_bram_Address(), .line_uv_bram_Data(), .line_uv_bram_Q(), 
       .line_uv_bram_Clock(), .line_uv_bram_ClockEn(), .line_uv_bram_Reset(), 
       .line_uv_bram_WE(), .pll_clk_CLKI(), .pll_clk_CLKOP(), .pll_clk_CLKOS());