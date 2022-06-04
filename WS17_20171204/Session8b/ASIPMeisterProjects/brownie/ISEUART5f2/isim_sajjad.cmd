onerror {resume}
#wave add /
#for help use: "help wave add"
wave add -name  CLK_IN -radix hex /TB/clk_in
wave add -name  CLK_100 -radix hex /TB/uut/clk_100
wave add -name RST -radix hex /TB/uut/reset
wave add -name RST_CPU -radix hex /TB/uut/reset_cpu

divider add "PC"
wave add  -name PC -radix hex /TB/uut/CPU0/uf_pc/data_out
wave add  -name IR -radix hex /TB/uut/CPU0/uf_ir/data_out
wave add  -name PC -radix hex /TB/uut/CPU0/uf_pc/data_out
wave add  -name IR -radix hex /TB/uut/CPU0/uf_ir/data_out

divider add "IM"
wave add  -name IM_addr_out -radix hex /TB/uut/CPU0/uf_imau/addr2mem
wave add  -name IM_data_in -radix hex /TB/uut/CPU0/uf_imau/data2cpu


divider add "DM"
wave add  -color #00FFFF -name DM_addr_out -radix hex /TB/uut/CPU0/uf_dmau/addr_out
wave add   -color #00FFFF -name DM_data_out -radix hex /TB/uut/CPU0/uf_dmau/data2mem
wave add  -color #00FFFF  -name DM_data_in -radix hex /TB/uut/CPU0/uf_dmau/data2cpu
wave add  -color #00FFFF -name DM_req_out                      /TB/uut/CPU0/uf_dmau/req2mem
wave add  -color #00FFFF -name DM_ack_in                       /TB/uut/CPU0/uf_dmau/ack2cpu
wave add  -color #00FFFF -name DM_rw -radix hex       /TB/uut/CPU0/uf_dmau/rw2mem
wave add   -color #00FFFF -name DM_mode -radix hex         /TB/uut/CPU0/uf_dmau/mode_out
wave add  -color #00FFFF -name DM_ext -radix hex       /TB/uut/CPU0/uf_dmau/ext2mem
#wave add -divider {New Divider}

divider add "TX"
wave add  -color #00FF1F -name TxClk -radix hex /TB/uut/uTx/clk
wave add  -color #00FF1F -name TxBaud -radix hex /TB/uut/uTx/en_16_x_baud
wave add  -color #00FF1F -name TxDataIn -radix hex /TB/uut/uTx/data_in
wave add  -color #00FF1F -name TxOut -radix hex /TB/uut/uTx/serial_out
wave add  -color #00FF1F -name MMapSel -radix hex /TB/uut/uMM/selector
							 
#wave add -name EXTINT_IN /TB/uut/CPU0/extint_in
wave add -name EXTCATCH_OUT /TB/uut/CPU0/extcatch_out
#wave add -name int_handling -radix hex /TB/uut/ua_ctrl/interrupt_handling
divider add "STAGES"
wave add   -name bran_acc_IF -radix hex /TB/uut/CPU0/ua_ctrl/branch_acc_if
wave add   -name bran_acc_ID -radix hex /TB/uut/CPU0/ua_ctrl/branch_acc_id
wave add   -name bran_acc_EXE -radix hex /TB/uut/CPU0/ua_ctrl/branch_acc_exe
wave add   -name bran_acc_WB -radix hex /TB/uut/CPU0/ua_ctrl/branch_acc_wb
wave add -name valid_IF -radix hex /TB/uut/CPU0/ua_ctrl/valid_stage_if
wave add -name valid_ID -radix hex /TB/uut/CPU0/ua_ctrl/valid_stage_id
wave add -name valid_EXE -radix hex /TB/uut/CPU0/ua_ctrl/valid_stage_exe
wave add -name valid_WB -radix hex /TB/uut/CPU0/ua_ctrl/valid_stage_wb


divider add "GPR"
wave add  -name FLAG -radix hex /TB/uut/CPU0/uf_gpr/flag_reg/data_out
wave add  -name STATUS -radix hex /TB/uut/CPU0/uf_gpr/streg/data_out
wave add  -name GPR1 -radix hex /TB/uut/CPU0/uf_gpr/status_out
wave add   -name GPR2 -radix hex /TB/uut/CPU0/uf_gpr/reg2/data_out
wave add   -name GPR3 -radix hex /TB/uut/CPU0/uf_gpr/reg3/data_out
wave add   -name GPR4 -radix hex /TB/uut/CPU0/uf_gpr/reg4/data_out
wave add   -name GPR5 -radix hex /TB/uut/CPU0/uf_gpr/reg5/data_out
wave add   -name GPR6 -radix hex /TB/uut/CPU0/uf_gpr/reg6/data_out
wave add   -name GPR7 -radix hex /TB/uut/CPU0/uf_gpr/reg7/data_out
wave add   -name GPR8 -radix hex /TB/uut/CPU0/uf_gpr/reg8/data_out
wave add   -name GPR9 -radix hex /TB/uut/CPU0/uf_gpr/reg9/data_out
wave add  -name GPR10 -radix hex /TB/uut/CPU0/uf_gpr/reg10/data_out
wave add  -name GPR11 -radix hex /TB/uut/CPU0/uf_gpr/reg11/data_out
wave add  -name GPR12 -radix hex /TB/uut/CPU0/uf_gpr/reg12/data_out
wave add  -name GPR13 -radix hex /TB/uut/CPU0/uf_gpr/reg13/data_out
wave add  -name GPR14 -radix hex /TB/uut/CPU0/uf_gpr/reg14/data_out
wave add  -name GPR15 -radix hex /TB/uut/CPU0/uf_gpr/reg15/data_out
wave add  -name GPR16 -radix hex /TB/uut/CPU0/uf_gpr/reg16/data_out
wave add  -name GPR17 -radix hex /TB/uut/CPU0/uf_gpr/reg17/data_out
wave add  -name GPR18 -radix hex /TB/uut/CPU0/uf_gpr/reg18/data_out
wave add  -name GPR19 -radix hex /TB/uut/CPU0/uf_gpr/reg19/data_out
wave add   -name GPR20 -radix hex /TB/uut/CPU0/uf_gpr/reg20/data_out
wave add   -name GPR21 -radix hex /TB/uut/CPU0/uf_gpr/reg21/data_out
wave add   -name GPR22 -radix hex /TB/uut/CPU0/uf_gpr/reg22/data_out
wave add   -name GPR23 -radix hex /TB/uut/CPU0/uf_gpr/reg23/data_out
wave add   -name GPR24 -radix hex /TB/uut/CPU0/uf_gpr/reg24/data_out
wave add   -name GPR25 -radix hex /TB/uut/CPU0/uf_gpr/reg25/data_out
wave add   -name GPR26 -radix hex /TB/uut/CPU0/uf_gpr/reg26/data_out
wave add   -name GPR27 -radix hex /TB/uut/CPU0/uf_gpr/reg27/data_out
wave add   -name GPR28 -radix hex /TB/uut/CPU0/uf_gpr/reg28/data_out
wave add   -name GPR29 -radix hex /TB/uut/CPU0/uf_gpr/reg29/data_out
wave add  -name GPR30 -radix hex /TB/uut/CPU0/uf_gpr/reg30/data_out
wave add  -name GPR31 -radix hex /TB/uut/CPU0/uf_gpr/reg31/data_out

run 1000 ns;
