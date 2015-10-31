// THIS FILE IS AUTOGENERATED BY wb_intercon_gen
// ANY MANUAL CHANGES WILL BE LOST
module wb_intercon
   (input         wb_clk_i,
    input         wb_rst_i,
    input  [31:0] wb_mips32r1_i_adr_i,
    input  [31:0] wb_mips32r1_i_dat_i,
    input   [3:0] wb_mips32r1_i_sel_i,
    input         wb_mips32r1_i_we_i,
    input         wb_mips32r1_i_cyc_i,
    input         wb_mips32r1_i_stb_i,
    input   [2:0] wb_mips32r1_i_cti_i,
    input   [1:0] wb_mips32r1_i_bte_i,
    output [31:0] wb_mips32r1_i_dat_o,
    output        wb_mips32r1_i_ack_o,
    output        wb_mips32r1_i_err_o,
    output        wb_mips32r1_i_rty_o,
    input  [31:0] wb_mips32r1_d_adr_i,
    input  [31:0] wb_mips32r1_d_dat_i,
    input   [3:0] wb_mips32r1_d_sel_i,
    input         wb_mips32r1_d_we_i,
    input         wb_mips32r1_d_cyc_i,
    input         wb_mips32r1_d_stb_i,
    input   [2:0] wb_mips32r1_d_cti_i,
    input   [1:0] wb_mips32r1_d_bte_i,
    output [31:0] wb_mips32r1_d_dat_o,
    output        wb_mips32r1_d_ack_o,
    output        wb_mips32r1_d_err_o,
    output        wb_mips32r1_d_rty_o,
    output [31:0] wb_uart0_adr_o,
    output [31:0] wb_uart0_dat_o,
    output  [3:0] wb_uart0_sel_o,
    output        wb_uart0_we_o,
    output        wb_uart0_cyc_o,
    output        wb_uart0_stb_o,
    output  [2:0] wb_uart0_cti_o,
    output  [1:0] wb_uart0_bte_o,
    input  [31:0] wb_uart0_dat_i,
    input         wb_uart0_ack_i,
    input         wb_uart0_err_i,
    input         wb_uart0_rty_i,
    output [31:0] wb_rom0_ibus_adr_o,
    output [31:0] wb_rom0_ibus_dat_o,
    output  [3:0] wb_rom0_ibus_sel_o,
    output        wb_rom0_ibus_we_o,
    output        wb_rom0_ibus_cyc_o,
    output        wb_rom0_ibus_stb_o,
    output  [2:0] wb_rom0_ibus_cti_o,
    output  [1:0] wb_rom0_ibus_bte_o,
    input  [31:0] wb_rom0_ibus_dat_i,
    input         wb_rom0_ibus_ack_i,
    input         wb_rom0_ibus_err_i,
    input         wb_rom0_ibus_rty_i,
    output [31:0] wb_rom0_dbus_adr_o,
    output [31:0] wb_rom0_dbus_dat_o,
    output  [3:0] wb_rom0_dbus_sel_o,
    output        wb_rom0_dbus_we_o,
    output        wb_rom0_dbus_cyc_o,
    output        wb_rom0_dbus_stb_o,
    output  [2:0] wb_rom0_dbus_cti_o,
    output  [1:0] wb_rom0_dbus_bte_o,
    input  [31:0] wb_rom0_dbus_dat_i,
    input         wb_rom0_dbus_ack_i,
    input         wb_rom0_dbus_err_i,
    input         wb_rom0_dbus_rty_i);

wb_mux
  #(.num_slaves (1),
    .MATCH_ADDR ({32'h1fc00000}),
    .MATCH_MASK ({32'hfffff800}))
 wb_mux_mips32r1_i
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i (wb_mips32r1_i_adr_i),
    .wbm_dat_i (wb_mips32r1_i_dat_i),
    .wbm_sel_i (wb_mips32r1_i_sel_i),
    .wbm_we_i  (wb_mips32r1_i_we_i),
    .wbm_cyc_i (wb_mips32r1_i_cyc_i),
    .wbm_stb_i (wb_mips32r1_i_stb_i),
    .wbm_cti_i (wb_mips32r1_i_cti_i),
    .wbm_bte_i (wb_mips32r1_i_bte_i),
    .wbm_dat_o (wb_mips32r1_i_dat_o),
    .wbm_ack_o (wb_mips32r1_i_ack_o),
    .wbm_err_o (wb_mips32r1_i_err_o),
    .wbm_rty_o (wb_mips32r1_i_rty_o),
    .wbs_adr_o ({wb_rom0_ibus_adr_o}),
    .wbs_dat_o ({wb_rom0_ibus_dat_o}),
    .wbs_sel_o ({wb_rom0_ibus_sel_o}),
    .wbs_we_o  ({wb_rom0_ibus_we_o}),
    .wbs_cyc_o ({wb_rom0_ibus_cyc_o}),
    .wbs_stb_o ({wb_rom0_ibus_stb_o}),
    .wbs_cti_o ({wb_rom0_ibus_cti_o}),
    .wbs_bte_o ({wb_rom0_ibus_bte_o}),
    .wbs_dat_i ({wb_rom0_ibus_dat_i}),
    .wbs_ack_i ({wb_rom0_ibus_ack_i}),
    .wbs_err_i ({wb_rom0_ibus_err_i}),
    .wbs_rty_i ({wb_rom0_ibus_rty_i}));

wb_mux
  #(.num_slaves (2),
    .MATCH_ADDR ({32'h1fc00000, 32'h1f000900}),
    .MATCH_MASK ({32'hfffff800, 32'hffffffe0}))
 wb_mux_mips32r1_d
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i (wb_mips32r1_d_adr_i),
    .wbm_dat_i (wb_mips32r1_d_dat_i),
    .wbm_sel_i (wb_mips32r1_d_sel_i),
    .wbm_we_i  (wb_mips32r1_d_we_i),
    .wbm_cyc_i (wb_mips32r1_d_cyc_i),
    .wbm_stb_i (wb_mips32r1_d_stb_i),
    .wbm_cti_i (wb_mips32r1_d_cti_i),
    .wbm_bte_i (wb_mips32r1_d_bte_i),
    .wbm_dat_o (wb_mips32r1_d_dat_o),
    .wbm_ack_o (wb_mips32r1_d_ack_o),
    .wbm_err_o (wb_mips32r1_d_err_o),
    .wbm_rty_o (wb_mips32r1_d_rty_o),
    .wbs_adr_o ({wb_rom0_dbus_adr_o, wb_uart0_adr_o}),
    .wbs_dat_o ({wb_rom0_dbus_dat_o, wb_uart0_dat_o}),
    .wbs_sel_o ({wb_rom0_dbus_sel_o, wb_uart0_sel_o}),
    .wbs_we_o  ({wb_rom0_dbus_we_o, wb_uart0_we_o}),
    .wbs_cyc_o ({wb_rom0_dbus_cyc_o, wb_uart0_cyc_o}),
    .wbs_stb_o ({wb_rom0_dbus_stb_o, wb_uart0_stb_o}),
    .wbs_cti_o ({wb_rom0_dbus_cti_o, wb_uart0_cti_o}),
    .wbs_bte_o ({wb_rom0_dbus_bte_o, wb_uart0_bte_o}),
    .wbs_dat_i ({wb_rom0_dbus_dat_i, wb_uart0_dat_i}),
    .wbs_ack_i ({wb_rom0_dbus_ack_i, wb_uart0_ack_i}),
    .wbs_err_i ({wb_rom0_dbus_err_i, wb_uart0_err_i}),
    .wbs_rty_i ({wb_rom0_dbus_rty_i, wb_uart0_rty_i}));

endmodule
