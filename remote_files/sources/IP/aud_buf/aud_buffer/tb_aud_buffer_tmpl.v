//Verilog testbench template generated by SCUBA Diamond (64-bit) 3.11.2.446
`timescale 1 ns / 1 ps
module tb;
    reg [15:0] Data = 16'b0;
    reg Clock = 0;
    reg WrEn = 0;
    reg RdEn = 0;
    reg Reset = 0;
    wire [15:0] Q;
    wire Empty;
    wire Full;
    wire AlmostFull;

    integer i0 = 0, i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0, i6 = 0, i7 = 0, i8 = 0;

    GSR GSR_INST (.GSR(1'b1));
    PUR PUR_INST (.PUR(1'b1));

    aud_buffer u1 (.Data(Data), .Clock(Clock), .WrEn(WrEn), .RdEn(RdEn), 
        .Reset(Reset), .Q(Q), .Empty(Empty), .Full(Full), .AlmostFull(AlmostFull)
    );

    initial
    begin
       Data <= 0;
      for (i1 = 0; i1 < 132; i1 = i1 + 1) begin
        @(posedge Clock);
        #1  Data <= Data + 1'b1;
      end
    end
    always
    #5.00 Clock <= ~ Clock;

    initial
    begin
       WrEn <= 1'b0;
      #100;
      @(Reset == 1'b0);
      for (i3 = 0; i3 < 132; i3 = i3 + 1) begin
        @(posedge Clock);
        #1  WrEn <= 1'b1;
      end
       WrEn <= 1'b0;
    end
    initial
    begin
       RdEn <= 1'b0;
      @(Reset == 1'b0);
      @(WrEn == 1'b1);
      @(WrEn == 1'b0);
      for (i4 = 0; i4 < 130; i4 = i4 + 1) begin
        @(posedge Clock);
        #1  RdEn <= 1'b1;
      end
       RdEn <= 1'b0;
    end
    initial
    begin
       Reset <= 1'b1;
      #100;
       Reset <= 1'b0;
    end
endmodule