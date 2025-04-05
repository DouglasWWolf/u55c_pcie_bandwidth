//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Apr  5 02:33:05 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pcie0_bridge_imp_XR3943
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_B_araddr,
    S_AXI_B_arburst,
    S_AXI_B_arid,
    S_AXI_B_arlen,
    S_AXI_B_arready,
    S_AXI_B_arsize,
    S_AXI_B_arvalid,
    S_AXI_B_awaddr,
    S_AXI_B_awburst,
    S_AXI_B_awid,
    S_AXI_B_awlen,
    S_AXI_B_awready,
    S_AXI_B_awsize,
    S_AXI_B_awvalid,
    S_AXI_B_bid,
    S_AXI_B_bready,
    S_AXI_B_bresp,
    S_AXI_B_bvalid,
    S_AXI_B_rdata,
    S_AXI_B_rid,
    S_AXI_B_rlast,
    S_AXI_B_rready,
    S_AXI_B_rresp,
    S_AXI_B_rvalid,
    S_AXI_B_wdata,
    S_AXI_B_wlast,
    S_AXI_B_wready,
    S_AXI_B_wstrb,
    S_AXI_B_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perst,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output M_AXI_B_arid;
  output M_AXI_B_arlen;
  output M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input [0:0]M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output [0:0]M_AXI_B_arvalid;
  output M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output M_AXI_B_awid;
  output M_AXI_B_awlen;
  output M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input [0:0]M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output [0:0]M_AXI_B_awvalid;
  input M_AXI_B_bid;
  output [0:0]M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input [0:0]M_AXI_B_bvalid;
  input M_AXI_B_rdata;
  input M_AXI_B_rid;
  input [0:0]M_AXI_B_rlast;
  output [0:0]M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input [0:0]M_AXI_B_rvalid;
  output M_AXI_B_wdata;
  output [0:0]M_AXI_B_wlast;
  input [0:0]M_AXI_B_wready;
  output M_AXI_B_wstrb;
  output [0:0]M_AXI_B_wvalid;
  input [63:0]S_AXI_B_araddr;
  input [1:0]S_AXI_B_arburst;
  input [3:0]S_AXI_B_arid;
  input [7:0]S_AXI_B_arlen;
  output S_AXI_B_arready;
  input [2:0]S_AXI_B_arsize;
  input S_AXI_B_arvalid;
  input [63:0]S_AXI_B_awaddr;
  input [1:0]S_AXI_B_awburst;
  input [3:0]S_AXI_B_awid;
  input [7:0]S_AXI_B_awlen;
  output S_AXI_B_awready;
  input [2:0]S_AXI_B_awsize;
  input S_AXI_B_awvalid;
  output [3:0]S_AXI_B_bid;
  input S_AXI_B_bready;
  output [1:0]S_AXI_B_bresp;
  output S_AXI_B_bvalid;
  output [511:0]S_AXI_B_rdata;
  output [3:0]S_AXI_B_rid;
  output S_AXI_B_rlast;
  input S_AXI_B_rready;
  output [1:0]S_AXI_B_rresp;
  output S_AXI_B_rvalid;
  input [511:0]S_AXI_B_wdata;
  input S_AXI_B_wlast;
  output S_AXI_B_wready;
  input [63:0]S_AXI_B_wstrb;
  input S_AXI_B_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input pcie_perst;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]S_AXI_B_1_ARADDR;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_B_1_ARBURST;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_B_1_ARID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_B_1_ARLEN;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire S_AXI_B_1_ARREADY;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_B_1_ARSIZE;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire S_AXI_B_1_ARVALID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]S_AXI_B_1_AWADDR;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]S_AXI_B_1_AWBURST;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_B_1_AWID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]S_AXI_B_1_AWLEN;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire S_AXI_B_1_AWREADY;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]S_AXI_B_1_AWSIZE;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire S_AXI_B_1_AWVALID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_B_1_BID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire S_AXI_B_1_BREADY;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_B_1_BRESP;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire S_AXI_B_1_BVALID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_B_1_RDATA;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [3:0]S_AXI_B_1_RID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire S_AXI_B_1_RLAST;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire S_AXI_B_1_RREADY;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]S_AXI_B_1_RRESP;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire S_AXI_B_1_RVALID;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]S_AXI_B_1_WDATA;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire S_AXI_B_1_WLAST;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire S_AXI_B_1_WREADY;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]S_AXI_B_1_WSTRB;
  (* CONN_BUS_INFO = "S_AXI_B_1 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire S_AXI_B_1_WVALID;
  wire sys_rst_n_0_1;
  wire [0:0]util_ds_buf_0_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [63:0]xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire [3:0]xdma_0_M_AXI_B_ARID;
  wire [7:0]xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire [0:0]xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire xdma_0_M_AXI_B_ARVALID;
  wire [63:0]xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire [3:0]xdma_0_M_AXI_B_AWID;
  wire [7:0]xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire [0:0]xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire xdma_0_M_AXI_B_AWVALID;
  wire xdma_0_M_AXI_B_BID;
  wire xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire [0:0]xdma_0_M_AXI_B_BVALID;
  wire xdma_0_M_AXI_B_RDATA;
  wire xdma_0_M_AXI_B_RID;
  wire [0:0]xdma_0_M_AXI_B_RLAST;
  wire xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire [0:0]xdma_0_M_AXI_B_RVALID;
  wire [511:0]xdma_0_M_AXI_B_WDATA;
  wire xdma_0_M_AXI_B_WLAST;
  wire [0:0]xdma_0_M_AXI_B_WREADY;
  wire [63:0]xdma_0_M_AXI_B_WSTRB;
  wire xdma_0_M_AXI_B_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [7:0]xdma_0_pcie_mgt_rxn;
  wire [7:0]xdma_0_pcie_mgt_rxp;
  wire [7:0]xdma_0_pcie_mgt_txn;
  wire [7:0]xdma_0_pcie_mgt_txp;

  assign CLK_IN_D_0_1_CLK_N = pcie_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_refclk_clk_p[0];
  assign M_AXI_B_araddr = xdma_0_M_AXI_B_ARADDR[0];
  assign M_AXI_B_arburst[1:0] = xdma_0_M_AXI_B_ARBURST;
  assign M_AXI_B_arcache[3:0] = xdma_0_M_AXI_B_ARCACHE;
  assign M_AXI_B_arid = xdma_0_M_AXI_B_ARID[0];
  assign M_AXI_B_arlen = xdma_0_M_AXI_B_ARLEN[0];
  assign M_AXI_B_arlock = xdma_0_M_AXI_B_ARLOCK;
  assign M_AXI_B_arprot[2:0] = xdma_0_M_AXI_B_ARPROT;
  assign M_AXI_B_arsize[2:0] = xdma_0_M_AXI_B_ARSIZE;
  assign M_AXI_B_arvalid[0] = xdma_0_M_AXI_B_ARVALID;
  assign M_AXI_B_awaddr = xdma_0_M_AXI_B_AWADDR[0];
  assign M_AXI_B_awburst[1:0] = xdma_0_M_AXI_B_AWBURST;
  assign M_AXI_B_awcache[3:0] = xdma_0_M_AXI_B_AWCACHE;
  assign M_AXI_B_awid = xdma_0_M_AXI_B_AWID[0];
  assign M_AXI_B_awlen = xdma_0_M_AXI_B_AWLEN[0];
  assign M_AXI_B_awlock = xdma_0_M_AXI_B_AWLOCK;
  assign M_AXI_B_awprot[2:0] = xdma_0_M_AXI_B_AWPROT;
  assign M_AXI_B_awsize[2:0] = xdma_0_M_AXI_B_AWSIZE;
  assign M_AXI_B_awvalid[0] = xdma_0_M_AXI_B_AWVALID;
  assign M_AXI_B_bready[0] = xdma_0_M_AXI_B_BREADY;
  assign M_AXI_B_rready[0] = xdma_0_M_AXI_B_RREADY;
  assign M_AXI_B_wdata = xdma_0_M_AXI_B_WDATA[0];
  assign M_AXI_B_wlast[0] = xdma_0_M_AXI_B_WLAST;
  assign M_AXI_B_wstrb = xdma_0_M_AXI_B_WSTRB[0];
  assign M_AXI_B_wvalid[0] = xdma_0_M_AXI_B_WVALID;
  assign S_AXI_B_1_ARADDR = S_AXI_B_araddr[63:0];
  assign S_AXI_B_1_ARBURST = S_AXI_B_arburst[1:0];
  assign S_AXI_B_1_ARID = S_AXI_B_arid[3:0];
  assign S_AXI_B_1_ARLEN = S_AXI_B_arlen[7:0];
  assign S_AXI_B_1_ARSIZE = S_AXI_B_arsize[2:0];
  assign S_AXI_B_1_ARVALID = S_AXI_B_arvalid;
  assign S_AXI_B_1_AWADDR = S_AXI_B_awaddr[63:0];
  assign S_AXI_B_1_AWBURST = S_AXI_B_awburst[1:0];
  assign S_AXI_B_1_AWID = S_AXI_B_awid[3:0];
  assign S_AXI_B_1_AWLEN = S_AXI_B_awlen[7:0];
  assign S_AXI_B_1_AWSIZE = S_AXI_B_awsize[2:0];
  assign S_AXI_B_1_AWVALID = S_AXI_B_awvalid;
  assign S_AXI_B_1_BREADY = S_AXI_B_bready;
  assign S_AXI_B_1_RREADY = S_AXI_B_rready;
  assign S_AXI_B_1_WDATA = S_AXI_B_wdata[511:0];
  assign S_AXI_B_1_WLAST = S_AXI_B_wlast;
  assign S_AXI_B_1_WSTRB = S_AXI_B_wstrb[63:0];
  assign S_AXI_B_1_WVALID = S_AXI_B_wvalid;
  assign S_AXI_B_arready = S_AXI_B_1_ARREADY;
  assign S_AXI_B_awready = S_AXI_B_1_AWREADY;
  assign S_AXI_B_bid[3:0] = S_AXI_B_1_BID;
  assign S_AXI_B_bresp[1:0] = S_AXI_B_1_BRESP;
  assign S_AXI_B_bvalid = S_AXI_B_1_BVALID;
  assign S_AXI_B_rdata[511:0] = S_AXI_B_1_RDATA;
  assign S_AXI_B_rid[3:0] = S_AXI_B_1_RID;
  assign S_AXI_B_rlast = S_AXI_B_1_RLAST;
  assign S_AXI_B_rresp[1:0] = S_AXI_B_1_RRESP;
  assign S_AXI_B_rvalid = S_AXI_B_1_RVALID;
  assign S_AXI_B_wready = S_AXI_B_1_WREADY;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn = xdma_0_axi_aresetn;
  assign pcie_mgt_txn[7:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[7:0] = xdma_0_pcie_mgt_txp;
  assign sys_rst_n_0_1 = pcie_perst;
  assign xdma_0_M_AXI_B_ARREADY = M_AXI_B_arready[0];
  assign xdma_0_M_AXI_B_AWREADY = M_AXI_B_awready[0];
  assign xdma_0_M_AXI_B_BID = M_AXI_B_bid;
  assign xdma_0_M_AXI_B_BRESP = M_AXI_B_bresp[1:0];
  assign xdma_0_M_AXI_B_BVALID = M_AXI_B_bvalid[0];
  assign xdma_0_M_AXI_B_RDATA = M_AXI_B_rdata;
  assign xdma_0_M_AXI_B_RID = M_AXI_B_rid;
  assign xdma_0_M_AXI_B_RLAST = M_AXI_B_rlast[0];
  assign xdma_0_M_AXI_B_RRESP = M_AXI_B_rresp[1:0];
  assign xdma_0_M_AXI_B_RVALID = M_AXI_B_rvalid[0];
  assign xdma_0_M_AXI_B_WREADY = M_AXI_B_wready[0];
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[7:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[7:0];
  top_level_util_ds_buf_0_0 clock_buffer
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_0_IBUF_DS_ODIV2),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axib_araddr(xdma_0_M_AXI_B_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_B_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_B_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_B_ARID),
        .m_axib_arlen(xdma_0_M_AXI_B_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_B_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_B_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_B_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_B_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_B_ARVALID),
        .m_axib_awaddr(xdma_0_M_AXI_B_AWADDR),
        .m_axib_awburst(xdma_0_M_AXI_B_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_B_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_B_AWID),
        .m_axib_awlen(xdma_0_M_AXI_B_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_B_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_B_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_B_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_B_AWSIZE),
        .m_axib_awvalid(xdma_0_M_AXI_B_AWVALID),
        .m_axib_bid({xdma_0_M_AXI_B_BID,xdma_0_M_AXI_B_BID,xdma_0_M_AXI_B_BID,xdma_0_M_AXI_B_BID}),
        .m_axib_bready(xdma_0_M_AXI_B_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_B_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_B_BVALID),
        .m_axib_rdata({xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA}),
        .m_axib_rid({xdma_0_M_AXI_B_RID,xdma_0_M_AXI_B_RID,xdma_0_M_AXI_B_RID,xdma_0_M_AXI_B_RID}),
        .m_axib_rlast(xdma_0_M_AXI_B_RLAST),
        .m_axib_rready(xdma_0_M_AXI_B_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_B_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_B_RVALID),
        .m_axib_wdata(xdma_0_M_AXI_B_WDATA),
        .m_axib_wlast(xdma_0_M_AXI_B_WLAST),
        .m_axib_wready(xdma_0_M_AXI_B_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_B_WSTRB),
        .m_axib_wvalid(xdma_0_M_AXI_B_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axib_araddr(S_AXI_B_1_ARADDR),
        .s_axib_arburst(S_AXI_B_1_ARBURST),
        .s_axib_arid(S_AXI_B_1_ARID),
        .s_axib_arlen(S_AXI_B_1_ARLEN),
        .s_axib_arready(S_AXI_B_1_ARREADY),
        .s_axib_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arsize(S_AXI_B_1_ARSIZE),
        .s_axib_arvalid(S_AXI_B_1_ARVALID),
        .s_axib_awaddr(S_AXI_B_1_AWADDR),
        .s_axib_awburst(S_AXI_B_1_AWBURST),
        .s_axib_awid(S_AXI_B_1_AWID),
        .s_axib_awlen(S_AXI_B_1_AWLEN),
        .s_axib_awready(S_AXI_B_1_AWREADY),
        .s_axib_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awsize(S_AXI_B_1_AWSIZE),
        .s_axib_awvalid(S_AXI_B_1_AWVALID),
        .s_axib_bid(S_AXI_B_1_BID),
        .s_axib_bready(S_AXI_B_1_BREADY),
        .s_axib_bresp(S_AXI_B_1_BRESP),
        .s_axib_bvalid(S_AXI_B_1_BVALID),
        .s_axib_rdata(S_AXI_B_1_RDATA),
        .s_axib_rid(S_AXI_B_1_RID),
        .s_axib_rlast(S_AXI_B_1_RLAST),
        .s_axib_rready(S_AXI_B_1_RREADY),
        .s_axib_rresp(S_AXI_B_1_RRESP),
        .s_axib_rvalid(S_AXI_B_1_RVALID),
        .s_axib_wdata(S_AXI_B_1_WDATA),
        .s_axib_wlast(S_AXI_B_1_WLAST),
        .s_axib_wready(S_AXI_B_1_WREADY),
        .s_axib_wstrb(S_AXI_B_1_WSTRB),
        .s_axib_wvalid(S_AXI_B_1_WVALID),
        .s_axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arvalid(1'b0),
        .s_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awvalid(1'b0),
        .s_axil_bready(1'b0),
        .s_axil_rready(1'b0),
        .s_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(1'b0),
        .sys_clk(util_ds_buf_0_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(sys_rst_n_0_1),
        .usr_irq_req(1'b0));
  top_level_system_ila_0_0 system_ila
       (.SLOT_0_AXI_araddr(S_AXI_B_1_ARADDR[0]),
        .SLOT_0_AXI_arburst(S_AXI_B_1_ARBURST),
        .SLOT_0_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_0_AXI_arid(S_AXI_B_1_ARID[0]),
        .SLOT_0_AXI_arlen(S_AXI_B_1_ARLEN[0]),
        .SLOT_0_AXI_arlock(1'b0),
        .SLOT_0_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arready(S_AXI_B_1_ARREADY),
        .SLOT_0_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arsize(S_AXI_B_1_ARSIZE),
        .SLOT_0_AXI_aruser(1'b0),
        .SLOT_0_AXI_arvalid(S_AXI_B_1_ARVALID),
        .SLOT_0_AXI_awaddr(S_AXI_B_1_AWADDR[0]),
        .SLOT_0_AXI_awburst(S_AXI_B_1_AWBURST),
        .SLOT_0_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .SLOT_0_AXI_awid(S_AXI_B_1_AWID[0]),
        .SLOT_0_AXI_awlen(S_AXI_B_1_AWLEN[0]),
        .SLOT_0_AXI_awlock(1'b0),
        .SLOT_0_AXI_awprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awready(S_AXI_B_1_AWREADY),
        .SLOT_0_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awsize(S_AXI_B_1_AWSIZE),
        .SLOT_0_AXI_awuser(1'b0),
        .SLOT_0_AXI_awvalid(S_AXI_B_1_AWVALID),
        .SLOT_0_AXI_bid(S_AXI_B_1_BID[0]),
        .SLOT_0_AXI_bready(S_AXI_B_1_BREADY),
        .SLOT_0_AXI_bresp(S_AXI_B_1_BRESP),
        .SLOT_0_AXI_buser(1'b0),
        .SLOT_0_AXI_bvalid(S_AXI_B_1_BVALID),
        .SLOT_0_AXI_rdata(S_AXI_B_1_RDATA[0]),
        .SLOT_0_AXI_rid(S_AXI_B_1_RID[0]),
        .SLOT_0_AXI_rlast(S_AXI_B_1_RLAST),
        .SLOT_0_AXI_rready(S_AXI_B_1_RREADY),
        .SLOT_0_AXI_rresp(S_AXI_B_1_RRESP),
        .SLOT_0_AXI_ruser(1'b0),
        .SLOT_0_AXI_rvalid(S_AXI_B_1_RVALID),
        .SLOT_0_AXI_wdata(S_AXI_B_1_WDATA[0]),
        .SLOT_0_AXI_wid(1'b0),
        .SLOT_0_AXI_wlast(S_AXI_B_1_WLAST),
        .SLOT_0_AXI_wready(S_AXI_B_1_WREADY),
        .SLOT_0_AXI_wstrb(S_AXI_B_1_WSTRB[0]),
        .SLOT_0_AXI_wuser(1'b0),
        .SLOT_0_AXI_wvalid(S_AXI_B_1_WVALID),
        .clk(xdma_0_axi_aclk),
        .resetn(1'b0));
endmodule

module pcie1_bridge_imp_1YH9ZFK
   (S_AXI_B_araddr,
    S_AXI_B_arburst,
    S_AXI_B_arcache,
    S_AXI_B_arid,
    S_AXI_B_arlen,
    S_AXI_B_arlock,
    S_AXI_B_arprot,
    S_AXI_B_arqos,
    S_AXI_B_arready,
    S_AXI_B_arsize,
    S_AXI_B_arvalid,
    S_AXI_B_awaddr,
    S_AXI_B_awburst,
    S_AXI_B_awcache,
    S_AXI_B_awid,
    S_AXI_B_awlen,
    S_AXI_B_awlock,
    S_AXI_B_awprot,
    S_AXI_B_awqos,
    S_AXI_B_awready,
    S_AXI_B_awsize,
    S_AXI_B_awvalid,
    S_AXI_B_bready,
    S_AXI_B_bresp,
    S_AXI_B_bvalid,
    S_AXI_B_rdata,
    S_AXI_B_rlast,
    S_AXI_B_rready,
    S_AXI_B_rresp,
    S_AXI_B_rvalid,
    S_AXI_B_wdata,
    S_AXI_B_wlast,
    S_AXI_B_wready,
    S_AXI_B_wstrb,
    S_AXI_B_wvalid,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perst,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    sys_clk,
    sys_resetn);
  input [63:0]S_AXI_B_araddr;
  input [1:0]S_AXI_B_arburst;
  input [3:0]S_AXI_B_arcache;
  input [3:0]S_AXI_B_arid;
  input [7:0]S_AXI_B_arlen;
  input [0:0]S_AXI_B_arlock;
  input [2:0]S_AXI_B_arprot;
  input [3:0]S_AXI_B_arqos;
  output S_AXI_B_arready;
  input [2:0]S_AXI_B_arsize;
  input S_AXI_B_arvalid;
  input [63:0]S_AXI_B_awaddr;
  input [1:0]S_AXI_B_awburst;
  input [3:0]S_AXI_B_awcache;
  input [3:0]S_AXI_B_awid;
  input [7:0]S_AXI_B_awlen;
  input [0:0]S_AXI_B_awlock;
  input [2:0]S_AXI_B_awprot;
  input [3:0]S_AXI_B_awqos;
  output S_AXI_B_awready;
  input [2:0]S_AXI_B_awsize;
  input S_AXI_B_awvalid;
  input S_AXI_B_bready;
  output [1:0]S_AXI_B_bresp;
  output S_AXI_B_bvalid;
  output [511:0]S_AXI_B_rdata;
  output S_AXI_B_rlast;
  input S_AXI_B_rready;
  output [1:0]S_AXI_B_rresp;
  output S_AXI_B_rvalid;
  input [511:0]S_AXI_B_wdata;
  input S_AXI_B_wlast;
  output S_AXI_B_wready;
  input [63:0]S_AXI_B_wstrb;
  input S_AXI_B_wvalid;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input pcie_perst;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;
  input sys_clk;
  input sys_resetn;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [63:0]S_AXI_B_1_ARADDR;
  wire [1:0]S_AXI_B_1_ARBURST;
  wire [3:0]S_AXI_B_1_ARCACHE;
  wire [3:0]S_AXI_B_1_ARID;
  wire [7:0]S_AXI_B_1_ARLEN;
  wire [0:0]S_AXI_B_1_ARLOCK;
  wire [2:0]S_AXI_B_1_ARPROT;
  wire [3:0]S_AXI_B_1_ARQOS;
  wire S_AXI_B_1_ARREADY;
  wire [2:0]S_AXI_B_1_ARSIZE;
  wire S_AXI_B_1_ARVALID;
  wire [63:0]S_AXI_B_1_AWADDR;
  wire [1:0]S_AXI_B_1_AWBURST;
  wire [3:0]S_AXI_B_1_AWCACHE;
  wire [3:0]S_AXI_B_1_AWID;
  wire [7:0]S_AXI_B_1_AWLEN;
  wire [0:0]S_AXI_B_1_AWLOCK;
  wire [2:0]S_AXI_B_1_AWPROT;
  wire [3:0]S_AXI_B_1_AWQOS;
  wire S_AXI_B_1_AWREADY;
  wire [2:0]S_AXI_B_1_AWSIZE;
  wire S_AXI_B_1_AWVALID;
  wire S_AXI_B_1_BREADY;
  wire [1:0]S_AXI_B_1_BRESP;
  wire S_AXI_B_1_BVALID;
  wire [511:0]S_AXI_B_1_RDATA;
  wire S_AXI_B_1_RLAST;
  wire S_AXI_B_1_RREADY;
  wire [1:0]S_AXI_B_1_RRESP;
  wire S_AXI_B_1_RVALID;
  wire [511:0]S_AXI_B_1_WDATA;
  wire S_AXI_B_1_WLAST;
  wire S_AXI_B_1_WREADY;
  wire [63:0]S_AXI_B_1_WSTRB;
  wire S_AXI_B_1_WVALID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]axi_clock_converter_M_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]axi_clock_converter_M_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_ARID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axi_clock_converter_M_AXI_ARLEN;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_clock_converter_M_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]axi_clock_converter_M_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREGION" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_ARREGION;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_clock_converter_M_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]axi_clock_converter_M_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]axi_clock_converter_M_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_AWID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_clock_converter_M_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_clock_converter_M_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_clock_converter_M_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREGION" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_AWREGION;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_clock_converter_M_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_BID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_clock_converter_M_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]axi_clock_converter_M_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [3:0]axi_clock_converter_M_AXI_RID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_clock_converter_M_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]axi_clock_converter_M_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]axi_clock_converter_M_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_clock_converter_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axi_clock_converter_M_AXI_WVALID;
  wire pcie_bridge_axi_aresetn;
  wire sys_clk_1;
  wire sys_resetn_1;
  wire sys_rst_n_0_1;
  wire [0:0]util_ds_buf_0_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire xdma_0_axi_aclk;
  wire [7:0]xdma_0_pcie_mgt_rxn;
  wire [7:0]xdma_0_pcie_mgt_rxp;
  wire [7:0]xdma_0_pcie_mgt_txn;
  wire [7:0]xdma_0_pcie_mgt_txp;

  assign CLK_IN_D_0_1_CLK_N = pcie_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_refclk_clk_p[0];
  assign S_AXI_B_1_ARADDR = S_AXI_B_araddr[63:0];
  assign S_AXI_B_1_ARBURST = S_AXI_B_arburst[1:0];
  assign S_AXI_B_1_ARCACHE = S_AXI_B_arcache[3:0];
  assign S_AXI_B_1_ARID = S_AXI_B_arid[3:0];
  assign S_AXI_B_1_ARLEN = S_AXI_B_arlen[7:0];
  assign S_AXI_B_1_ARLOCK = S_AXI_B_arlock[0];
  assign S_AXI_B_1_ARPROT = S_AXI_B_arprot[2:0];
  assign S_AXI_B_1_ARQOS = S_AXI_B_arqos[3:0];
  assign S_AXI_B_1_ARSIZE = S_AXI_B_arsize[2:0];
  assign S_AXI_B_1_ARVALID = S_AXI_B_arvalid;
  assign S_AXI_B_1_AWADDR = S_AXI_B_awaddr[63:0];
  assign S_AXI_B_1_AWBURST = S_AXI_B_awburst[1:0];
  assign S_AXI_B_1_AWCACHE = S_AXI_B_awcache[3:0];
  assign S_AXI_B_1_AWID = S_AXI_B_awid[3:0];
  assign S_AXI_B_1_AWLEN = S_AXI_B_awlen[7:0];
  assign S_AXI_B_1_AWLOCK = S_AXI_B_awlock[0];
  assign S_AXI_B_1_AWPROT = S_AXI_B_awprot[2:0];
  assign S_AXI_B_1_AWQOS = S_AXI_B_awqos[3:0];
  assign S_AXI_B_1_AWSIZE = S_AXI_B_awsize[2:0];
  assign S_AXI_B_1_AWVALID = S_AXI_B_awvalid;
  assign S_AXI_B_1_BREADY = S_AXI_B_bready;
  assign S_AXI_B_1_RREADY = S_AXI_B_rready;
  assign S_AXI_B_1_WDATA = S_AXI_B_wdata[511:0];
  assign S_AXI_B_1_WLAST = S_AXI_B_wlast;
  assign S_AXI_B_1_WSTRB = S_AXI_B_wstrb[63:0];
  assign S_AXI_B_1_WVALID = S_AXI_B_wvalid;
  assign S_AXI_B_arready = S_AXI_B_1_ARREADY;
  assign S_AXI_B_awready = S_AXI_B_1_AWREADY;
  assign S_AXI_B_bresp[1:0] = S_AXI_B_1_BRESP;
  assign S_AXI_B_bvalid = S_AXI_B_1_BVALID;
  assign S_AXI_B_rdata[511:0] = S_AXI_B_1_RDATA;
  assign S_AXI_B_rlast = S_AXI_B_1_RLAST;
  assign S_AXI_B_rresp[1:0] = S_AXI_B_1_RRESP;
  assign S_AXI_B_rvalid = S_AXI_B_1_RVALID;
  assign S_AXI_B_wready = S_AXI_B_1_WREADY;
  assign pcie_mgt_txn[7:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[7:0] = xdma_0_pcie_mgt_txp;
  assign sys_clk_1 = sys_clk;
  assign sys_resetn_1 = sys_resetn;
  assign sys_rst_n_0_1 = pcie_perst;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[7:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[7:0];
  top_level_axi_clock_converter_0_0 axi_clock_converter
       (.m_axi_aclk(xdma_0_axi_aclk),
        .m_axi_araddr(axi_clock_converter_M_AXI_ARADDR),
        .m_axi_arburst(axi_clock_converter_M_AXI_ARBURST),
        .m_axi_arcache(axi_clock_converter_M_AXI_ARCACHE),
        .m_axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axi_arid(axi_clock_converter_M_AXI_ARID),
        .m_axi_arlen(axi_clock_converter_M_AXI_ARLEN),
        .m_axi_arlock(axi_clock_converter_M_AXI_ARLOCK),
        .m_axi_arprot(axi_clock_converter_M_AXI_ARPROT),
        .m_axi_arqos(axi_clock_converter_M_AXI_ARQOS),
        .m_axi_arready(axi_clock_converter_M_AXI_ARREADY),
        .m_axi_arregion(axi_clock_converter_M_AXI_ARREGION),
        .m_axi_arsize(axi_clock_converter_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_clock_converter_M_AXI_ARVALID),
        .m_axi_awaddr(axi_clock_converter_M_AXI_AWADDR),
        .m_axi_awburst(axi_clock_converter_M_AXI_AWBURST),
        .m_axi_awcache(axi_clock_converter_M_AXI_AWCACHE),
        .m_axi_awid(axi_clock_converter_M_AXI_AWID),
        .m_axi_awlen(axi_clock_converter_M_AXI_AWLEN),
        .m_axi_awlock(axi_clock_converter_M_AXI_AWLOCK),
        .m_axi_awprot(axi_clock_converter_M_AXI_AWPROT),
        .m_axi_awqos(axi_clock_converter_M_AXI_AWQOS),
        .m_axi_awready(axi_clock_converter_M_AXI_AWREADY),
        .m_axi_awregion(axi_clock_converter_M_AXI_AWREGION),
        .m_axi_awsize(axi_clock_converter_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_clock_converter_M_AXI_AWVALID),
        .m_axi_bid(axi_clock_converter_M_AXI_BID),
        .m_axi_bready(axi_clock_converter_M_AXI_BREADY),
        .m_axi_bresp(axi_clock_converter_M_AXI_BRESP),
        .m_axi_bvalid(axi_clock_converter_M_AXI_BVALID),
        .m_axi_rdata(axi_clock_converter_M_AXI_RDATA),
        .m_axi_rid(axi_clock_converter_M_AXI_RID),
        .m_axi_rlast(axi_clock_converter_M_AXI_RLAST),
        .m_axi_rready(axi_clock_converter_M_AXI_RREADY),
        .m_axi_rresp(axi_clock_converter_M_AXI_RRESP),
        .m_axi_rvalid(axi_clock_converter_M_AXI_RVALID),
        .m_axi_wdata(axi_clock_converter_M_AXI_WDATA),
        .m_axi_wlast(axi_clock_converter_M_AXI_WLAST),
        .m_axi_wready(axi_clock_converter_M_AXI_WREADY),
        .m_axi_wstrb(axi_clock_converter_M_AXI_WSTRB),
        .m_axi_wvalid(axi_clock_converter_M_AXI_WVALID),
        .s_axi_aclk(sys_clk_1),
        .s_axi_araddr(S_AXI_B_1_ARADDR),
        .s_axi_arburst(S_AXI_B_1_ARBURST),
        .s_axi_arcache(S_AXI_B_1_ARCACHE),
        .s_axi_aresetn(sys_resetn_1),
        .s_axi_arid(S_AXI_B_1_ARID),
        .s_axi_arlen(S_AXI_B_1_ARLEN),
        .s_axi_arlock(S_AXI_B_1_ARLOCK),
        .s_axi_arprot(S_AXI_B_1_ARPROT),
        .s_axi_arqos(S_AXI_B_1_ARQOS),
        .s_axi_arready(S_AXI_B_1_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_B_1_ARSIZE),
        .s_axi_arvalid(S_AXI_B_1_ARVALID),
        .s_axi_awaddr(S_AXI_B_1_AWADDR),
        .s_axi_awburst(S_AXI_B_1_AWBURST),
        .s_axi_awcache(S_AXI_B_1_AWCACHE),
        .s_axi_awid(S_AXI_B_1_AWID),
        .s_axi_awlen(S_AXI_B_1_AWLEN),
        .s_axi_awlock(S_AXI_B_1_AWLOCK),
        .s_axi_awprot(S_AXI_B_1_AWPROT),
        .s_axi_awqos(S_AXI_B_1_AWQOS),
        .s_axi_awready(S_AXI_B_1_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_B_1_AWSIZE),
        .s_axi_awvalid(S_AXI_B_1_AWVALID),
        .s_axi_bready(S_AXI_B_1_BREADY),
        .s_axi_bresp(S_AXI_B_1_BRESP),
        .s_axi_bvalid(S_AXI_B_1_BVALID),
        .s_axi_rdata(S_AXI_B_1_RDATA),
        .s_axi_rlast(S_AXI_B_1_RLAST),
        .s_axi_rready(S_AXI_B_1_RREADY),
        .s_axi_rresp(S_AXI_B_1_RRESP),
        .s_axi_rvalid(S_AXI_B_1_RVALID),
        .s_axi_wdata(S_AXI_B_1_WDATA),
        .s_axi_wlast(S_AXI_B_1_WLAST),
        .s_axi_wready(S_AXI_B_1_WREADY),
        .s_axi_wstrb(S_AXI_B_1_WSTRB),
        .s_axi_wvalid(S_AXI_B_1_WVALID));
  top_level_clock_buffer_0 clock_buffer
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_0_IBUF_DS_ODIV2),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  top_level_pcie_bridge_0_0 pcie_bridge
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axib_araddr(axi_clock_converter_M_AXI_ARADDR),
        .s_axib_arburst(axi_clock_converter_M_AXI_ARBURST),
        .s_axib_arid(axi_clock_converter_M_AXI_ARID),
        .s_axib_arlen(axi_clock_converter_M_AXI_ARLEN),
        .s_axib_arready(axi_clock_converter_M_AXI_ARREADY),
        .s_axib_arregion(axi_clock_converter_M_AXI_ARREGION),
        .s_axib_arsize(axi_clock_converter_M_AXI_ARSIZE),
        .s_axib_arvalid(axi_clock_converter_M_AXI_ARVALID),
        .s_axib_awaddr(axi_clock_converter_M_AXI_AWADDR),
        .s_axib_awburst(axi_clock_converter_M_AXI_AWBURST),
        .s_axib_awid(axi_clock_converter_M_AXI_AWID),
        .s_axib_awlen(axi_clock_converter_M_AXI_AWLEN),
        .s_axib_awready(axi_clock_converter_M_AXI_AWREADY),
        .s_axib_awregion(axi_clock_converter_M_AXI_AWREGION),
        .s_axib_awsize(axi_clock_converter_M_AXI_AWSIZE),
        .s_axib_awvalid(axi_clock_converter_M_AXI_AWVALID),
        .s_axib_bid(axi_clock_converter_M_AXI_BID),
        .s_axib_bready(axi_clock_converter_M_AXI_BREADY),
        .s_axib_bresp(axi_clock_converter_M_AXI_BRESP),
        .s_axib_bvalid(axi_clock_converter_M_AXI_BVALID),
        .s_axib_rdata(axi_clock_converter_M_AXI_RDATA),
        .s_axib_rid(axi_clock_converter_M_AXI_RID),
        .s_axib_rlast(axi_clock_converter_M_AXI_RLAST),
        .s_axib_rready(axi_clock_converter_M_AXI_RREADY),
        .s_axib_rresp(axi_clock_converter_M_AXI_RRESP),
        .s_axib_rvalid(axi_clock_converter_M_AXI_RVALID),
        .s_axib_wdata(axi_clock_converter_M_AXI_WDATA),
        .s_axib_wlast(axi_clock_converter_M_AXI_WLAST),
        .s_axib_wready(axi_clock_converter_M_AXI_WREADY),
        .s_axib_wstrb(axi_clock_converter_M_AXI_WSTRB),
        .s_axib_wvalid(axi_clock_converter_M_AXI_WVALID),
        .s_axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arvalid(1'b0),
        .s_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awvalid(1'b0),
        .s_axil_bready(1'b0),
        .s_axil_rready(1'b0),
        .s_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(1'b0),
        .sys_clk(util_ds_buf_0_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(sys_rst_n_0_1),
        .usr_irq_req(1'b0));
  top_level_system_ila_1 system_ila
       (.SLOT_0_AXI_araddr(axi_clock_converter_M_AXI_ARADDR[0]),
        .SLOT_0_AXI_arburst(axi_clock_converter_M_AXI_ARBURST),
        .SLOT_0_AXI_arcache(axi_clock_converter_M_AXI_ARCACHE),
        .SLOT_0_AXI_arid(axi_clock_converter_M_AXI_ARID[0]),
        .SLOT_0_AXI_arlen(axi_clock_converter_M_AXI_ARLEN[0]),
        .SLOT_0_AXI_arlock(axi_clock_converter_M_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(axi_clock_converter_M_AXI_ARPROT),
        .SLOT_0_AXI_arqos(axi_clock_converter_M_AXI_ARQOS),
        .SLOT_0_AXI_arready(axi_clock_converter_M_AXI_ARREADY),
        .SLOT_0_AXI_arregion(axi_clock_converter_M_AXI_ARREGION),
        .SLOT_0_AXI_arsize(axi_clock_converter_M_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(1'b0),
        .SLOT_0_AXI_arvalid(axi_clock_converter_M_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_clock_converter_M_AXI_AWADDR[0]),
        .SLOT_0_AXI_awburst(axi_clock_converter_M_AXI_AWBURST),
        .SLOT_0_AXI_awcache(axi_clock_converter_M_AXI_AWCACHE),
        .SLOT_0_AXI_awid(axi_clock_converter_M_AXI_AWID[0]),
        .SLOT_0_AXI_awlen(axi_clock_converter_M_AXI_AWLEN[0]),
        .SLOT_0_AXI_awlock(axi_clock_converter_M_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(axi_clock_converter_M_AXI_AWPROT),
        .SLOT_0_AXI_awqos(axi_clock_converter_M_AXI_AWQOS),
        .SLOT_0_AXI_awready(axi_clock_converter_M_AXI_AWREADY),
        .SLOT_0_AXI_awregion(axi_clock_converter_M_AXI_AWREGION),
        .SLOT_0_AXI_awsize(axi_clock_converter_M_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(1'b0),
        .SLOT_0_AXI_awvalid(axi_clock_converter_M_AXI_AWVALID),
        .SLOT_0_AXI_bid(axi_clock_converter_M_AXI_BID[0]),
        .SLOT_0_AXI_bready(axi_clock_converter_M_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_clock_converter_M_AXI_BRESP),
        .SLOT_0_AXI_buser(1'b0),
        .SLOT_0_AXI_bvalid(axi_clock_converter_M_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_clock_converter_M_AXI_RDATA[0]),
        .SLOT_0_AXI_rid(axi_clock_converter_M_AXI_RID[0]),
        .SLOT_0_AXI_rlast(axi_clock_converter_M_AXI_RLAST),
        .SLOT_0_AXI_rready(axi_clock_converter_M_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_clock_converter_M_AXI_RRESP),
        .SLOT_0_AXI_ruser(1'b0),
        .SLOT_0_AXI_rvalid(axi_clock_converter_M_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_clock_converter_M_AXI_WDATA[0]),
        .SLOT_0_AXI_wid(1'b0),
        .SLOT_0_AXI_wlast(axi_clock_converter_M_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_clock_converter_M_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_clock_converter_M_AXI_WSTRB[0]),
        .SLOT_0_AXI_wuser(1'b0),
        .SLOT_0_AXI_wvalid(axi_clock_converter_M_AXI_WVALID),
        .clk(xdma_0_axi_aclk),
        .resetn(1'b0));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (hbm_cattrip,
    pcie0_refclk_clk_n,
    pcie0_refclk_clk_p,
    pcie1_refclk_clk_n,
    pcie1_refclk_clk_p,
    pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    pcie_mgt_1_rxn,
    pcie_mgt_1_rxp,
    pcie_mgt_1_txn,
    pcie_mgt_1_txp,
    pcie_perst_l);
  output [0:0]hbm_cattrip;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *) input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie1_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_P" *) input [0:0]pcie1_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxn" *) input [7:0]pcie_mgt_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxp" *) input [7:0]pcie_mgt_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txn" *) output [7:0]pcie_mgt_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txp" *) output [7:0]pcie_mgt_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxn" *) input [7:0]pcie_mgt_1_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxp" *) input [7:0]pcie_mgt_1_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txn" *) output [7:0]pcie_mgt_1_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txp" *) output [7:0]pcie_mgt_1_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERST_L RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERST_L, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perst_l;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [0:0]PCIE_REFCLK_0_1_CLK_N;
  wire [0:0]PCIE_REFCLK_0_1_CLK_P;
  wire [63:0]S_AXI_B_1_ARADDR;
  wire [1:0]S_AXI_B_1_ARBURST;
  wire [3:0]S_AXI_B_1_ARCACHE;
  wire [3:0]S_AXI_B_1_ARID;
  wire [7:0]S_AXI_B_1_ARLEN;
  wire S_AXI_B_1_ARLOCK;
  wire [2:0]S_AXI_B_1_ARPROT;
  wire [3:0]S_AXI_B_1_ARQOS;
  wire S_AXI_B_1_ARREADY;
  wire [2:0]S_AXI_B_1_ARSIZE;
  wire S_AXI_B_1_ARVALID;
  wire [63:0]S_AXI_B_1_AWADDR;
  wire [1:0]S_AXI_B_1_AWBURST;
  wire [3:0]S_AXI_B_1_AWCACHE;
  wire [3:0]S_AXI_B_1_AWID;
  wire [7:0]S_AXI_B_1_AWLEN;
  wire S_AXI_B_1_AWLOCK;
  wire [2:0]S_AXI_B_1_AWPROT;
  wire [3:0]S_AXI_B_1_AWQOS;
  wire S_AXI_B_1_AWREADY;
  wire [2:0]S_AXI_B_1_AWSIZE;
  wire S_AXI_B_1_AWVALID;
  wire S_AXI_B_1_BREADY;
  wire [1:0]S_AXI_B_1_BRESP;
  wire S_AXI_B_1_BVALID;
  wire [511:0]S_AXI_B_1_RDATA;
  wire S_AXI_B_1_RLAST;
  wire S_AXI_B_1_RREADY;
  wire [1:0]S_AXI_B_1_RRESP;
  wire S_AXI_B_1_RVALID;
  wire [511:0]S_AXI_B_1_WDATA;
  wire S_AXI_B_1_WLAST;
  wire S_AXI_B_1_WREADY;
  wire [63:0]S_AXI_B_1_WSTRB;
  wire S_AXI_B_1_WVALID;
  wire [63:0]axi4_traffic_gen_0_M_AXI_ARADDR;
  wire [1:0]axi4_traffic_gen_0_M_AXI_ARBURST;
  wire [3:0]axi4_traffic_gen_0_M_AXI_ARID;
  wire [7:0]axi4_traffic_gen_0_M_AXI_ARLEN;
  wire axi4_traffic_gen_0_M_AXI_ARREADY;
  wire [2:0]axi4_traffic_gen_0_M_AXI_ARSIZE;
  wire axi4_traffic_gen_0_M_AXI_ARVALID;
  wire [63:0]axi4_traffic_gen_0_M_AXI_AWADDR;
  wire [1:0]axi4_traffic_gen_0_M_AXI_AWBURST;
  wire [3:0]axi4_traffic_gen_0_M_AXI_AWID;
  wire [7:0]axi4_traffic_gen_0_M_AXI_AWLEN;
  wire axi4_traffic_gen_0_M_AXI_AWREADY;
  wire [2:0]axi4_traffic_gen_0_M_AXI_AWSIZE;
  wire axi4_traffic_gen_0_M_AXI_AWVALID;
  wire axi4_traffic_gen_0_M_AXI_BREADY;
  wire [1:0]axi4_traffic_gen_0_M_AXI_BRESP;
  wire axi4_traffic_gen_0_M_AXI_BVALID;
  wire [511:0]axi4_traffic_gen_0_M_AXI_RDATA;
  wire axi4_traffic_gen_0_M_AXI_RLAST;
  wire axi4_traffic_gen_0_M_AXI_RREADY;
  wire [1:0]axi4_traffic_gen_0_M_AXI_RRESP;
  wire axi4_traffic_gen_0_M_AXI_RVALID;
  wire [511:0]axi4_traffic_gen_0_M_AXI_WDATA;
  wire axi4_traffic_gen_0_M_AXI_WLAST;
  wire axi4_traffic_gen_0_M_AXI_WREADY;
  wire [63:0]axi4_traffic_gen_0_M_AXI_WSTRB;
  wire axi4_traffic_gen_0_M_AXI_WVALID;
  wire axi4_traffic_gen_0_read_busy;
  wire [31:0]axi4_traffic_gen_0_read_time;
  wire axi4_traffic_gen_0_write_busy;
  wire [31:0]axi4_traffic_gen_0_write_time;
  wire axi4_traffic_gen_1_read_busy;
  wire [31:0]axi4_traffic_gen_1_read_time;
  wire axi4_traffic_gen_1_write_busy;
  wire [31:0]axi4_traffic_gen_1_write_time;
  wire control_start_read_0;
  wire control_start_read_1;
  wire control_start_write_0;
  wire control_start_write_1;
  wire [0:0]gnd_dout;
  wire [7:0]pcie1_bridge_pcie_mgt_0_rxn;
  wire [7:0]pcie1_bridge_pcie_mgt_0_rxp;
  wire [7:0]pcie1_bridge_pcie_mgt_0_txn;
  wire [7:0]pcie1_bridge_pcie_mgt_0_txp;
  wire pcie_bridge_0_M_AXI_B_ARADDR;
  wire [1:0]pcie_bridge_0_M_AXI_B_ARBURST;
  wire [3:0]pcie_bridge_0_M_AXI_B_ARCACHE;
  wire pcie_bridge_0_M_AXI_B_ARID;
  wire pcie_bridge_0_M_AXI_B_ARLEN;
  wire pcie_bridge_0_M_AXI_B_ARLOCK;
  wire [2:0]pcie_bridge_0_M_AXI_B_ARPROT;
  wire [0:0]pcie_bridge_0_M_AXI_B_ARREADY;
  wire [2:0]pcie_bridge_0_M_AXI_B_ARSIZE;
  wire [0:0]pcie_bridge_0_M_AXI_B_ARVALID;
  wire pcie_bridge_0_M_AXI_B_AWADDR;
  wire [1:0]pcie_bridge_0_M_AXI_B_AWBURST;
  wire [3:0]pcie_bridge_0_M_AXI_B_AWCACHE;
  wire pcie_bridge_0_M_AXI_B_AWID;
  wire pcie_bridge_0_M_AXI_B_AWLEN;
  wire pcie_bridge_0_M_AXI_B_AWLOCK;
  wire [2:0]pcie_bridge_0_M_AXI_B_AWPROT;
  wire [0:0]pcie_bridge_0_M_AXI_B_AWREADY;
  wire [2:0]pcie_bridge_0_M_AXI_B_AWSIZE;
  wire [0:0]pcie_bridge_0_M_AXI_B_AWVALID;
  wire pcie_bridge_0_M_AXI_B_BID;
  wire [0:0]pcie_bridge_0_M_AXI_B_BREADY;
  wire [1:0]pcie_bridge_0_M_AXI_B_BRESP;
  wire [0:0]pcie_bridge_0_M_AXI_B_BVALID;
  wire pcie_bridge_0_M_AXI_B_RDATA;
  wire pcie_bridge_0_M_AXI_B_RID;
  wire [0:0]pcie_bridge_0_M_AXI_B_RLAST;
  wire [0:0]pcie_bridge_0_M_AXI_B_RREADY;
  wire [1:0]pcie_bridge_0_M_AXI_B_RRESP;
  wire [0:0]pcie_bridge_0_M_AXI_B_RVALID;
  wire pcie_bridge_0_M_AXI_B_WDATA;
  wire [0:0]pcie_bridge_0_M_AXI_B_WLAST;
  wire [0:0]pcie_bridge_0_M_AXI_B_WREADY;
  wire pcie_bridge_0_M_AXI_B_WSTRB;
  wire [0:0]pcie_bridge_0_M_AXI_B_WVALID;
  wire pcie_bridge_0_axi_aclk;
  wire pcie_bridge_0_axi_aresetn;
  wire smartconnect_M00_AXI_ARADDR;
  wire [2:0]smartconnect_M00_AXI_ARPROT;
  wire smartconnect_M00_AXI_ARREADY;
  wire [0:0]smartconnect_M00_AXI_ARVALID;
  wire smartconnect_M00_AXI_AWADDR;
  wire [2:0]smartconnect_M00_AXI_AWPROT;
  wire smartconnect_M00_AXI_AWREADY;
  wire [0:0]smartconnect_M00_AXI_AWVALID;
  wire [0:0]smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire [0:0]smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire smartconnect_M00_AXI_WSTRB;
  wire [0:0]smartconnect_M00_AXI_WVALID;
  wire sys_rst_n_0_1;
  wire [7:0]xdma_0_pcie_mgt_rxn;
  wire [7:0]xdma_0_pcie_mgt_rxp;
  wire [7:0]xdma_0_pcie_mgt_txn;
  wire [7:0]xdma_0_pcie_mgt_txp;

  assign CLK_IN_D_0_1_CLK_N = pcie0_refclk_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie0_refclk_clk_p[0];
  assign PCIE_REFCLK_0_1_CLK_N = pcie1_refclk_clk_n[0];
  assign PCIE_REFCLK_0_1_CLK_P = pcie1_refclk_clk_p[0];
  assign hbm_cattrip[0] = gnd_dout;
  assign pcie1_bridge_pcie_mgt_0_rxn = pcie_mgt_1_rxn[7:0];
  assign pcie1_bridge_pcie_mgt_0_rxp = pcie_mgt_1_rxp[7:0];
  assign pcie_mgt_0_txn[7:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_0_txp[7:0] = xdma_0_pcie_mgt_txp;
  assign pcie_mgt_1_txn[7:0] = pcie1_bridge_pcie_mgt_0_txn;
  assign pcie_mgt_1_txp[7:0] = pcie1_bridge_pcie_mgt_0_txp;
  assign sys_rst_n_0_1 = pcie_perst_l;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_0_rxn[7:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_0_rxp[7:0];
  top_level_axi4_traffic_gen_0_0 axi4_traffic_gen_0
       (.M_AXI_ARADDR(axi4_traffic_gen_0_M_AXI_ARADDR),
        .M_AXI_ARBURST(axi4_traffic_gen_0_M_AXI_ARBURST),
        .M_AXI_ARID(axi4_traffic_gen_0_M_AXI_ARID),
        .M_AXI_ARLEN(axi4_traffic_gen_0_M_AXI_ARLEN),
        .M_AXI_ARREADY(axi4_traffic_gen_0_M_AXI_ARREADY),
        .M_AXI_ARSIZE(axi4_traffic_gen_0_M_AXI_ARSIZE),
        .M_AXI_ARVALID(axi4_traffic_gen_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi4_traffic_gen_0_M_AXI_AWADDR),
        .M_AXI_AWBURST(axi4_traffic_gen_0_M_AXI_AWBURST),
        .M_AXI_AWID(axi4_traffic_gen_0_M_AXI_AWID),
        .M_AXI_AWLEN(axi4_traffic_gen_0_M_AXI_AWLEN),
        .M_AXI_AWREADY(axi4_traffic_gen_0_M_AXI_AWREADY),
        .M_AXI_AWSIZE(axi4_traffic_gen_0_M_AXI_AWSIZE),
        .M_AXI_AWVALID(axi4_traffic_gen_0_M_AXI_AWVALID),
        .M_AXI_BREADY(axi4_traffic_gen_0_M_AXI_BREADY),
        .M_AXI_BRESP(axi4_traffic_gen_0_M_AXI_BRESP),
        .M_AXI_BVALID(axi4_traffic_gen_0_M_AXI_BVALID),
        .M_AXI_RDATA(axi4_traffic_gen_0_M_AXI_RDATA),
        .M_AXI_RLAST(axi4_traffic_gen_0_M_AXI_RLAST),
        .M_AXI_RREADY(axi4_traffic_gen_0_M_AXI_RREADY),
        .M_AXI_RRESP(axi4_traffic_gen_0_M_AXI_RRESP),
        .M_AXI_RVALID(axi4_traffic_gen_0_M_AXI_RVALID),
        .M_AXI_WDATA(axi4_traffic_gen_0_M_AXI_WDATA),
        .M_AXI_WLAST(axi4_traffic_gen_0_M_AXI_WLAST),
        .M_AXI_WREADY(axi4_traffic_gen_0_M_AXI_WREADY),
        .M_AXI_WSTRB(axi4_traffic_gen_0_M_AXI_WSTRB),
        .M_AXI_WVALID(axi4_traffic_gen_0_M_AXI_WVALID),
        .clk(pcie_bridge_0_axi_aclk),
        .read_busy(axi4_traffic_gen_0_read_busy),
        .read_time(axi4_traffic_gen_0_read_time),
        .resetn(pcie_bridge_0_axi_aresetn),
        .start_read(control_start_read_0),
        .start_write(control_start_write_0),
        .write_busy(axi4_traffic_gen_0_write_busy),
        .write_time(axi4_traffic_gen_0_write_time));
  top_level_axi4_traffic_gen_0_1 axi4_traffic_gen_1
       (.M_AXI_ARADDR(S_AXI_B_1_ARADDR),
        .M_AXI_ARBURST(S_AXI_B_1_ARBURST),
        .M_AXI_ARCACHE(S_AXI_B_1_ARCACHE),
        .M_AXI_ARID(S_AXI_B_1_ARID),
        .M_AXI_ARLEN(S_AXI_B_1_ARLEN),
        .M_AXI_ARLOCK(S_AXI_B_1_ARLOCK),
        .M_AXI_ARPROT(S_AXI_B_1_ARPROT),
        .M_AXI_ARQOS(S_AXI_B_1_ARQOS),
        .M_AXI_ARREADY(S_AXI_B_1_ARREADY),
        .M_AXI_ARSIZE(S_AXI_B_1_ARSIZE),
        .M_AXI_ARVALID(S_AXI_B_1_ARVALID),
        .M_AXI_AWADDR(S_AXI_B_1_AWADDR),
        .M_AXI_AWBURST(S_AXI_B_1_AWBURST),
        .M_AXI_AWCACHE(S_AXI_B_1_AWCACHE),
        .M_AXI_AWID(S_AXI_B_1_AWID),
        .M_AXI_AWLEN(S_AXI_B_1_AWLEN),
        .M_AXI_AWLOCK(S_AXI_B_1_AWLOCK),
        .M_AXI_AWPROT(S_AXI_B_1_AWPROT),
        .M_AXI_AWQOS(S_AXI_B_1_AWQOS),
        .M_AXI_AWREADY(S_AXI_B_1_AWREADY),
        .M_AXI_AWSIZE(S_AXI_B_1_AWSIZE),
        .M_AXI_AWVALID(S_AXI_B_1_AWVALID),
        .M_AXI_BREADY(S_AXI_B_1_BREADY),
        .M_AXI_BRESP(S_AXI_B_1_BRESP),
        .M_AXI_BVALID(S_AXI_B_1_BVALID),
        .M_AXI_RDATA(S_AXI_B_1_RDATA),
        .M_AXI_RLAST(S_AXI_B_1_RLAST),
        .M_AXI_RREADY(S_AXI_B_1_RREADY),
        .M_AXI_RRESP(S_AXI_B_1_RRESP),
        .M_AXI_RVALID(S_AXI_B_1_RVALID),
        .M_AXI_WDATA(S_AXI_B_1_WDATA),
        .M_AXI_WLAST(S_AXI_B_1_WLAST),
        .M_AXI_WREADY(S_AXI_B_1_WREADY),
        .M_AXI_WSTRB(S_AXI_B_1_WSTRB),
        .M_AXI_WVALID(S_AXI_B_1_WVALID),
        .clk(pcie_bridge_0_axi_aclk),
        .read_busy(axi4_traffic_gen_1_read_busy),
        .read_time(axi4_traffic_gen_1_read_time),
        .resetn(pcie_bridge_0_axi_aresetn),
        .start_read(control_start_read_1),
        .start_write(control_start_write_1),
        .write_busy(axi4_traffic_gen_1_write_busy),
        .write_time(axi4_traffic_gen_1_write_time));
  top_level_control_0_0 control
       (.S_AXI_ARADDR({smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR,smartconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(smartconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR,smartconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(smartconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA,smartconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(smartconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({smartconnect_M00_AXI_WSTRB,smartconnect_M00_AXI_WSTRB,smartconnect_M00_AXI_WSTRB,smartconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(smartconnect_M00_AXI_WVALID),
        .clk(pcie_bridge_0_axi_aclk),
        .read_busy_0(axi4_traffic_gen_0_read_busy),
        .read_busy_1(axi4_traffic_gen_1_read_busy),
        .read_time_0(axi4_traffic_gen_0_read_time),
        .read_time_1(axi4_traffic_gen_1_read_time),
        .resetn(pcie_bridge_0_axi_aresetn),
        .start_read_0(control_start_read_0),
        .start_read_1(control_start_read_1),
        .start_write_0(control_start_write_0),
        .start_write_1(control_start_write_1),
        .write_busy_0(axi4_traffic_gen_0_write_busy),
        .write_busy_1(axi4_traffic_gen_1_write_busy),
        .write_time_0(axi4_traffic_gen_0_write_time),
        .write_time_1(axi4_traffic_gen_1_write_time));
  top_level_xlconstant_0_0 gnd
       (.dout(gnd_dout));
  pcie0_bridge_imp_XR3943 pcie0_bridge
       (.M_AXI_B_araddr(pcie_bridge_0_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(pcie_bridge_0_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(pcie_bridge_0_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(pcie_bridge_0_M_AXI_B_ARID),
        .M_AXI_B_arlen(pcie_bridge_0_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(pcie_bridge_0_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(pcie_bridge_0_M_AXI_B_ARPROT),
        .M_AXI_B_arready(pcie_bridge_0_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(pcie_bridge_0_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(pcie_bridge_0_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(pcie_bridge_0_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(pcie_bridge_0_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(pcie_bridge_0_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(pcie_bridge_0_M_AXI_B_AWID),
        .M_AXI_B_awlen(pcie_bridge_0_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(pcie_bridge_0_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(pcie_bridge_0_M_AXI_B_AWPROT),
        .M_AXI_B_awready(pcie_bridge_0_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(pcie_bridge_0_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(pcie_bridge_0_M_AXI_B_AWVALID),
        .M_AXI_B_bid(pcie_bridge_0_M_AXI_B_BID),
        .M_AXI_B_bready(pcie_bridge_0_M_AXI_B_BREADY),
        .M_AXI_B_bresp(pcie_bridge_0_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(pcie_bridge_0_M_AXI_B_BVALID),
        .M_AXI_B_rdata(pcie_bridge_0_M_AXI_B_RDATA),
        .M_AXI_B_rid(pcie_bridge_0_M_AXI_B_RID),
        .M_AXI_B_rlast(pcie_bridge_0_M_AXI_B_RLAST),
        .M_AXI_B_rready(pcie_bridge_0_M_AXI_B_RREADY),
        .M_AXI_B_rresp(pcie_bridge_0_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(pcie_bridge_0_M_AXI_B_RVALID),
        .M_AXI_B_wdata(pcie_bridge_0_M_AXI_B_WDATA),
        .M_AXI_B_wlast(pcie_bridge_0_M_AXI_B_WLAST),
        .M_AXI_B_wready(pcie_bridge_0_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(pcie_bridge_0_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(pcie_bridge_0_M_AXI_B_WVALID),
        .S_AXI_B_araddr(axi4_traffic_gen_0_M_AXI_ARADDR),
        .S_AXI_B_arburst(axi4_traffic_gen_0_M_AXI_ARBURST),
        .S_AXI_B_arid(axi4_traffic_gen_0_M_AXI_ARID),
        .S_AXI_B_arlen(axi4_traffic_gen_0_M_AXI_ARLEN),
        .S_AXI_B_arready(axi4_traffic_gen_0_M_AXI_ARREADY),
        .S_AXI_B_arsize(axi4_traffic_gen_0_M_AXI_ARSIZE),
        .S_AXI_B_arvalid(axi4_traffic_gen_0_M_AXI_ARVALID),
        .S_AXI_B_awaddr(axi4_traffic_gen_0_M_AXI_AWADDR),
        .S_AXI_B_awburst(axi4_traffic_gen_0_M_AXI_AWBURST),
        .S_AXI_B_awid(axi4_traffic_gen_0_M_AXI_AWID),
        .S_AXI_B_awlen(axi4_traffic_gen_0_M_AXI_AWLEN),
        .S_AXI_B_awready(axi4_traffic_gen_0_M_AXI_AWREADY),
        .S_AXI_B_awsize(axi4_traffic_gen_0_M_AXI_AWSIZE),
        .S_AXI_B_awvalid(axi4_traffic_gen_0_M_AXI_AWVALID),
        .S_AXI_B_bready(axi4_traffic_gen_0_M_AXI_BREADY),
        .S_AXI_B_bresp(axi4_traffic_gen_0_M_AXI_BRESP),
        .S_AXI_B_bvalid(axi4_traffic_gen_0_M_AXI_BVALID),
        .S_AXI_B_rdata(axi4_traffic_gen_0_M_AXI_RDATA),
        .S_AXI_B_rlast(axi4_traffic_gen_0_M_AXI_RLAST),
        .S_AXI_B_rready(axi4_traffic_gen_0_M_AXI_RREADY),
        .S_AXI_B_rresp(axi4_traffic_gen_0_M_AXI_RRESP),
        .S_AXI_B_rvalid(axi4_traffic_gen_0_M_AXI_RVALID),
        .S_AXI_B_wdata(axi4_traffic_gen_0_M_AXI_WDATA),
        .S_AXI_B_wlast(axi4_traffic_gen_0_M_AXI_WLAST),
        .S_AXI_B_wready(axi4_traffic_gen_0_M_AXI_WREADY),
        .S_AXI_B_wstrb(axi4_traffic_gen_0_M_AXI_WSTRB),
        .S_AXI_B_wvalid(axi4_traffic_gen_0_M_AXI_WVALID),
        .axi_aclk(pcie_bridge_0_axi_aclk),
        .axi_aresetn(pcie_bridge_0_axi_aresetn),
        .pcie_mgt_rxn(xdma_0_pcie_mgt_rxn),
        .pcie_mgt_rxp(xdma_0_pcie_mgt_rxp),
        .pcie_mgt_txn(xdma_0_pcie_mgt_txn),
        .pcie_mgt_txp(xdma_0_pcie_mgt_txp),
        .pcie_perst(sys_rst_n_0_1),
        .pcie_refclk_clk_n(CLK_IN_D_0_1_CLK_N),
        .pcie_refclk_clk_p(CLK_IN_D_0_1_CLK_P));
  pcie1_bridge_imp_1YH9ZFK pcie1_bridge
       (.S_AXI_B_araddr(S_AXI_B_1_ARADDR),
        .S_AXI_B_arburst(S_AXI_B_1_ARBURST),
        .S_AXI_B_arcache(S_AXI_B_1_ARCACHE),
        .S_AXI_B_arid(S_AXI_B_1_ARID),
        .S_AXI_B_arlen(S_AXI_B_1_ARLEN),
        .S_AXI_B_arlock(S_AXI_B_1_ARLOCK),
        .S_AXI_B_arprot(S_AXI_B_1_ARPROT),
        .S_AXI_B_arqos(S_AXI_B_1_ARQOS),
        .S_AXI_B_arready(S_AXI_B_1_ARREADY),
        .S_AXI_B_arsize(S_AXI_B_1_ARSIZE),
        .S_AXI_B_arvalid(S_AXI_B_1_ARVALID),
        .S_AXI_B_awaddr(S_AXI_B_1_AWADDR),
        .S_AXI_B_awburst(S_AXI_B_1_AWBURST),
        .S_AXI_B_awcache(S_AXI_B_1_AWCACHE),
        .S_AXI_B_awid(S_AXI_B_1_AWID),
        .S_AXI_B_awlen(S_AXI_B_1_AWLEN),
        .S_AXI_B_awlock(S_AXI_B_1_AWLOCK),
        .S_AXI_B_awprot(S_AXI_B_1_AWPROT),
        .S_AXI_B_awqos(S_AXI_B_1_AWQOS),
        .S_AXI_B_awready(S_AXI_B_1_AWREADY),
        .S_AXI_B_awsize(S_AXI_B_1_AWSIZE),
        .S_AXI_B_awvalid(S_AXI_B_1_AWVALID),
        .S_AXI_B_bready(S_AXI_B_1_BREADY),
        .S_AXI_B_bresp(S_AXI_B_1_BRESP),
        .S_AXI_B_bvalid(S_AXI_B_1_BVALID),
        .S_AXI_B_rdata(S_AXI_B_1_RDATA),
        .S_AXI_B_rlast(S_AXI_B_1_RLAST),
        .S_AXI_B_rready(S_AXI_B_1_RREADY),
        .S_AXI_B_rresp(S_AXI_B_1_RRESP),
        .S_AXI_B_rvalid(S_AXI_B_1_RVALID),
        .S_AXI_B_wdata(S_AXI_B_1_WDATA),
        .S_AXI_B_wlast(S_AXI_B_1_WLAST),
        .S_AXI_B_wready(S_AXI_B_1_WREADY),
        .S_AXI_B_wstrb(S_AXI_B_1_WSTRB),
        .S_AXI_B_wvalid(S_AXI_B_1_WVALID),
        .pcie_mgt_rxn(pcie1_bridge_pcie_mgt_0_rxn),
        .pcie_mgt_rxp(pcie1_bridge_pcie_mgt_0_rxp),
        .pcie_mgt_txn(pcie1_bridge_pcie_mgt_0_txn),
        .pcie_mgt_txp(pcie1_bridge_pcie_mgt_0_txp),
        .pcie_perst(sys_rst_n_0_1),
        .pcie_refclk_clk_n(PCIE_REFCLK_0_1_CLK_N),
        .pcie_refclk_clk_p(PCIE_REFCLK_0_1_CLK_P),
        .sys_clk(pcie_bridge_0_axi_aclk),
        .sys_resetn(pcie_bridge_0_axi_aresetn));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(pcie_bridge_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(pcie_bridge_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(pcie_bridge_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(pcie_bridge_0_M_AXI_B_ARID),
        .S00_AXI_arlen(pcie_bridge_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(pcie_bridge_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(pcie_bridge_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(pcie_bridge_0_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(pcie_bridge_0_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(pcie_bridge_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(pcie_bridge_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(pcie_bridge_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(pcie_bridge_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(pcie_bridge_0_M_AXI_B_AWID),
        .S00_AXI_awlen(pcie_bridge_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(pcie_bridge_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(pcie_bridge_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(pcie_bridge_0_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(pcie_bridge_0_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(pcie_bridge_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(pcie_bridge_0_M_AXI_B_BID),
        .S00_AXI_bready(pcie_bridge_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(pcie_bridge_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(pcie_bridge_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(pcie_bridge_0_M_AXI_B_RDATA),
        .S00_AXI_rid(pcie_bridge_0_M_AXI_B_RID),
        .S00_AXI_rlast(pcie_bridge_0_M_AXI_B_RLAST),
        .S00_AXI_rready(pcie_bridge_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(pcie_bridge_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(pcie_bridge_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(pcie_bridge_0_M_AXI_B_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(pcie_bridge_0_M_AXI_B_WLAST),
        .S00_AXI_wready(pcie_bridge_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(pcie_bridge_0_M_AXI_B_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(pcie_bridge_0_M_AXI_B_WVALID),
        .aclk(pcie_bridge_0_axi_aclk),
        .aresetn(pcie_bridge_0_axi_aresetn));
endmodule
