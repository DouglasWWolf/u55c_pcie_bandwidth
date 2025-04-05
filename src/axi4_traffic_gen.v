module axi4_traffic_gen #
(
    parameter       DW=512, 
    parameter       IW=4,
    parameter       FREQ_HZ = 250000000,
    parameter[63:0] PCI_BASE_ADDR = 64'h0_0000_0000
)
(
    input   clk, resetn,
    
    input   start_write, start_read,

    output reg[31:0] write_time, read_time,

    output read_busy, write_busy,

    //=================   This is the AXI4 output interface   ==================

    // "Specify write address"              -- Master --    -- Slave --
    output     [63:0]                        M_AXI_AWADDR,
    output     [7:0]                         M_AXI_AWLEN,
    output     [2:0]                         M_AXI_AWSIZE,
    output     [IW-1:0]                      M_AXI_AWID,
    output     [1:0]                         M_AXI_AWBURST,
    output                                   M_AXI_AWLOCK,
    output     [3:0]                         M_AXI_AWCACHE,
    output     [3:0]                         M_AXI_AWQOS,
    output     [2:0]                         M_AXI_AWPROT,
    output                                   M_AXI_AWVALID,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output [DW-1:0]                         M_AXI_WDATA,
    output [(DW/8)-1:0]                     M_AXI_WSTRB,
    output                                  M_AXI_WVALID,
    output                                  M_AXI_WLAST,
    input                                                   M_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    input[1:0]                                              M_AXI_BRESP,
    input                                                   M_AXI_BVALID,
    output                                  M_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    output[63:0]                            M_AXI_ARADDR,
    output                                  M_AXI_ARVALID,
    output[2:0]                             M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output[IW-1:0]                          M_AXI_ARID,
    output[7:0]                             M_AXI_ARLEN,
    output[2:0]                             M_AXI_ARSIZE,
    output[1:0]                             M_AXI_ARBURST,
    output[3:0]                             M_AXI_ARCACHE,
    output[3:0]                             M_AXI_ARQOS,
    input                                                   M_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    input[DW-1:0]                                           M_AXI_RDATA,
    input                                                   M_AXI_RVALID,
    input[1:0]                                              M_AXI_RRESP,
    input                                                   M_AXI_RLAST,
    output                                  M_AXI_RREADY
    //==========================================================================

);

localparam[63:0] TOTAL_SIZE       = 4 * 1024 * 1024 * 1024;
localparam       BURST_SIZE       = 4096;
localparam       BURST_COUNT      = TOTAL_SIZE / BURST_SIZE;
localparam       CYCLES_PER_BURST = (BURST_SIZE / (DW/8));

reg       awsm_state;
reg[31:0] aw_blocks;

reg       wsm_state;
reg[31:0] w_blocks;

reg       bsm_state;
reg[31:0] b_blocks;

reg       arsm_state;
reg[31:0] ar_blocks;

reg       rsm_state;
reg[31:0] r_blocks;


reg[ 7:0] cycle;
reg[31:0] data;
reg[31:0] awaddr, araddr;
reg[31:0] wtimer, rtimer;

//=============================================================================
// This block sends write-requests to the AW-channel
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        awsm_state <= 0;

    else case(awsm_state)

        0:  if (start_write) begin
                awaddr     <= 0;
                aw_blocks  <= 1;
                awsm_state <= 1;
            end

        1:  if (M_AXI_AWVALID & M_AXI_AWREADY) begin
                if (aw_blocks == BURST_COUNT)
                    awsm_state <= 0;
                else begin
                    awaddr    <= awaddr + BURST_SIZE;
                    aw_blocks <= aw_blocks + 1;
                end
            end

    endcase
end
//=============================================================================


//=============================================================================
// This block sends data to the W-channel
//=============================================================================
always @(posedge clk) begin
    
    if (resetn == 0) begin
        wsm_state <= 0;
    end

    else case(wsm_state)

        0:  if (start_write) begin
                data      <= 0;
                cycle     <= 1;
                w_blocks  <= 1;
                wsm_state <= 1;
            end

        1:  if (M_AXI_WVALID & M_AXI_WREADY) begin
                data <= data + 1;
                if (M_AXI_WLAST == 0)
                    cycle <= cycle + 1;
                else begin
                    if (w_blocks == BURST_COUNT)
                        wsm_state <= 0;
                    else begin
                        cycle    <= 1;
                        w_blocks <= w_blocks + 1;
                    end
                end
            end

    endcase

end
//=============================================================================


//=============================================================================
// This block counts acknowledgements on the B-channel of M_AXI
//=============================================================================
always @(posedge clk) begin
    
    wtimer <= wtimer + 1;
    
    if (resetn == 0)
        bsm_state <= 0;
    
    else case (bsm_state)
        
        0:  if (start_write) begin
                wtimer    <= 0;
                b_blocks  <= 1;
                bsm_state <= 1;
            end

        1:  if (M_AXI_BVALID & M_AXI_BREADY) begin
                if (b_blocks == BURST_COUNT) begin
                    write_time <= wtimer;
                    bsm_state  <= 0;
                end

                else b_blocks <= b_blocks + 1;
            end
    endcase
end
//-----------------------------------------------------------------------------
assign M_AXI_BREADY = (resetn == 1) & (bsm_state == 1);
//=============================================================================




//=============================================================================
// This block sends read-requests to the AR-channel
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        arsm_state <= 0;

    else case(arsm_state)

        0:  if (start_read) begin
                araddr     <= 0;
                ar_blocks  <= 1;
                arsm_state <= 1;
            end

        1:  if (M_AXI_ARVALID & M_AXI_ARREADY) begin
                if (ar_blocks == BURST_COUNT)
                    arsm_state <= 0;
                else begin
                    araddr    <= araddr + BURST_SIZE;
                    ar_blocks <= ar_blocks + 1;
                end
            end

    endcase
end
//=============================================================================



//=============================================================================
// This block counts bursts received on the R-channel of M_AXI
//=============================================================================
always @(posedge clk) begin
    
    rtimer <= rtimer + 1;
    
    if (resetn == 0)
        rsm_state <= 0;
    
    else case (rsm_state)
        
        0:  if (start_read) begin
                rtimer    <= 0;
                r_blocks  <= 1;
                rsm_state <= 1;
            end

        1:  if (M_AXI_RVALID & M_AXI_RREADY & M_AXI_RLAST) begin
                if (r_blocks == BURST_COUNT) begin
                    read_time  <= rtimer;
                    rsm_state  <= 0;
                end else
                    r_blocks <= r_blocks + 1;
            end
    endcase
end
//-----------------------------------------------------------------------------
assign M_AXI_RREADY = (resetn == 1) & (rsm_state == 1);
//=============================================================================




//=============================================================================
// Constant values for the AR-channel of the M_AXI interface
//=============================================================================
assign M_AXI_ARADDR  = araddr + PCI_BASE_ADDR;
assign M_AXI_ARVALID = (resetn == 1) & (arsm_state == 1);
assign M_AXI_ARLEN   = CYCLES_PER_BURST - 1;
assign M_AXI_ARSIZE  = $clog2(DW/8);
assign M_AXI_ARBURST = 1;
assign M_AXI_ARPROT  = 0;
assign M_AXI_ARLOCK  = 0;
assign M_AXI_ARID    = 0;
assign M_AXI_ARCACHE = 0;
assign M_AXI_ARQOS   = 0;
//=============================================================================


//=============================================================================
// Constant values for the AW-channel of the M_AXI interface
//=============================================================================
assign M_AXI_AWADDR  = awaddr + PCI_BASE_ADDR;
assign M_AXI_AWVALID = (awsm_state != 0);
assign M_AXI_AWSIZE  = $clog2(DW/8);
assign M_AXI_AWLEN   = CYCLES_PER_BURST - 1;
assign M_AXI_AWBURST = 1;
assign M_AXI_AWID    = 0;
assign M_AXI_AWLOCK  = 0;
assign M_AXI_AWCACHE = 0;
assign M_AXI_AWQOS   = 0;
assign M_AXI_AWPROT  = 0;
//=============================================================================



//=============================================================================
// Constant values for the W-channel of the M_AXI interface
//=============================================================================
assign M_AXI_WDATA  = {(DW/32){data}};
assign M_AXI_WSTRB  = -1;
assign M_AXI_WVALID = (wsm_state != 0);
assign M_AXI_WLAST  = (cycle == CYCLES_PER_BURST);
//=============================================================================


assign read_busy  = (rsm_state != 0) | start_read;
assign write_busy = (bsm_state != 0) | start_write;

endmodule
