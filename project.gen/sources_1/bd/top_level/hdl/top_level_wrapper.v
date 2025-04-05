//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Apr  5 03:04:25 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
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
  input [0:0]pcie0_refclk_clk_n;
  input [0:0]pcie0_refclk_clk_p;
  input [0:0]pcie1_refclk_clk_n;
  input [0:0]pcie1_refclk_clk_p;
  input [7:0]pcie_mgt_0_rxn;
  input [7:0]pcie_mgt_0_rxp;
  output [7:0]pcie_mgt_0_txn;
  output [7:0]pcie_mgt_0_txp;
  input [7:0]pcie_mgt_1_rxn;
  input [7:0]pcie_mgt_1_rxp;
  output [7:0]pcie_mgt_1_txn;
  output [7:0]pcie_mgt_1_txp;
  input pcie_perst_l;

  wire [0:0]hbm_cattrip;
  wire [0:0]pcie0_refclk_clk_n;
  wire [0:0]pcie0_refclk_clk_p;
  wire [0:0]pcie1_refclk_clk_n;
  wire [0:0]pcie1_refclk_clk_p;
  wire [7:0]pcie_mgt_0_rxn;
  wire [7:0]pcie_mgt_0_rxp;
  wire [7:0]pcie_mgt_0_txn;
  wire [7:0]pcie_mgt_0_txp;
  wire [7:0]pcie_mgt_1_rxn;
  wire [7:0]pcie_mgt_1_rxp;
  wire [7:0]pcie_mgt_1_txn;
  wire [7:0]pcie_mgt_1_txp;
  wire pcie_perst_l;

  top_level top_level_i
       (.hbm_cattrip(hbm_cattrip),
        .pcie0_refclk_clk_n(pcie0_refclk_clk_n),
        .pcie0_refclk_clk_p(pcie0_refclk_clk_p),
        .pcie1_refclk_clk_n(pcie1_refclk_clk_n),
        .pcie1_refclk_clk_p(pcie1_refclk_clk_p),
        .pcie_mgt_0_rxn(pcie_mgt_0_rxn),
        .pcie_mgt_0_rxp(pcie_mgt_0_rxp),
        .pcie_mgt_0_txn(pcie_mgt_0_txn),
        .pcie_mgt_0_txp(pcie_mgt_0_txp),
        .pcie_mgt_1_rxn(pcie_mgt_1_rxn),
        .pcie_mgt_1_rxp(pcie_mgt_1_rxp),
        .pcie_mgt_1_txn(pcie_mgt_1_txn),
        .pcie_mgt_1_txp(pcie_mgt_1_txp),
        .pcie_perst_l(pcie_perst_l));
endmodule
