














































































/*
 * Copyright (c) 2007 NEC Corpoartion.
 * All rights reserved.
 * Use and distribution of this program without permission are not allowed.
 *
 */

/*
 * Library for encoding and decoding instructions specified by XML
 * processor model files.
 *
 * This file is used as a template of the instruction
 * encoding/decodign library
 *
 * !!! This file is under construction. !!!
 */

#ifndef _XXXCPU_SIM_H_
#define _XXXCPU_SIM_H_

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>



enum register_width_as_enum
{
E_REGISTER_WIDTH__GR__0 = 32,
E_REGISTER_WIDTH__GR__1 = 32,
E_REGISTER_WIDTH__GR__2 = 32,
E_REGISTER_WIDTH__GR__3 = 32,
E_REGISTER_WIDTH__GR__4 = 32,
E_REGISTER_WIDTH__GR__5 = 32,
E_REGISTER_WIDTH__GR__6 = 32,
E_REGISTER_WIDTH__GR__7 = 32,
E_REGISTER_WIDTH__GR__8 = 32,
E_REGISTER_WIDTH__GR__9 = 32,
E_REGISTER_WIDTH__GR__10 = 32,
E_REGISTER_WIDTH__GR__11 = 32,
E_REGISTER_WIDTH__GR__12 = 32,
E_REGISTER_WIDTH__GR__13 = 32,
E_REGISTER_WIDTH__GR__14 = 32,
E_REGISTER_WIDTH__GR__15 = 32,
E_REGISTER_WIDTH__GR__16 = 32,
E_REGISTER_WIDTH__GR__17 = 32,
E_REGISTER_WIDTH__GR__18 = 32,
E_REGISTER_WIDTH__GR__19 = 32,
E_REGISTER_WIDTH__GR__20 = 32,
E_REGISTER_WIDTH__GR__21 = 32,
E_REGISTER_WIDTH__GR__22 = 32,
E_REGISTER_WIDTH__GR__23 = 32,
E_REGISTER_WIDTH__GR__24 = 32,
E_REGISTER_WIDTH__GR__25 = 32,
E_REGISTER_WIDTH__GR__26 = 32,
E_REGISTER_WIDTH__GR__27 = 32,
E_REGISTER_WIDTH__GR__28 = 32,
E_REGISTER_WIDTH__GR__29 = 32,
E_REGISTER_WIDTH__GR__30 = 32,
E_REGISTER_WIDTH__GR__31 = 32,
};



enum gdb_regnum_as_enum {
E_GDB_REGNUM__GR__0 = 0,
E_GDB_REGNUM__GR__1 = 1,
E_GDB_REGNUM__GR__2 = 2,
E_GDB_REGNUM__GR__3 = 3,
E_GDB_REGNUM__GR__4 = 4,
E_GDB_REGNUM__GR__5 = 5,
E_GDB_REGNUM__GR__6 = 6,
E_GDB_REGNUM__GR__7 = 7,
E_GDB_REGNUM__GR__8 = 8,
E_GDB_REGNUM__GR__9 = 9,
E_GDB_REGNUM__GR__10 = 10,
E_GDB_REGNUM__GR__11 = 11,
E_GDB_REGNUM__GR__12 = 12,
E_GDB_REGNUM__GR__13 = 13,
E_GDB_REGNUM__GR__14 = 14,
E_GDB_REGNUM__GR__15 = 15,
E_GDB_REGNUM__GR__16 = 16,
E_GDB_REGNUM__GR__17 = 17,
E_GDB_REGNUM__GR__18 = 18,
E_GDB_REGNUM__GR__19 = 19,
E_GDB_REGNUM__GR__20 = 20,
E_GDB_REGNUM__GR__21 = 21,
E_GDB_REGNUM__GR__22 = 22,
E_GDB_REGNUM__GR__23 = 23,
E_GDB_REGNUM__GR__24 = 24,
E_GDB_REGNUM__GR__25 = 25,
E_GDB_REGNUM__GR__26 = 26,
E_GDB_REGNUM__GR__27 = 27,
E_GDB_REGNUM__GR__28 = 28,
E_GDB_REGNUM__GR__29 = 29,
E_GDB_REGNUM__GR__30 = 30,
E_GDB_REGNUM__GR__31 = 31,
};



typedef  void (*insn_exec_func_t) (struct insn_info_t*, int32_t *operands);


SIM_DESC libccg_get_current_sim_desc (void);
int libccg_set_current_sim_desc (SIM_DESC sd);
void libccg_init_sim (void);
int libccg_fetch_extended_register (int regnum, uint8_t *buff, int length);
int libccg_store_extended_register (int regnum, uint8_t *buff, int length);
int libccg_fetch_register (int regnum, uint8_t *buff);
int libccg_store_register (int regnum, uint8_t *buff);
int8_t libccg_fetch_register8 (int regnum);
int16_t libccg_fetch_register16 (int regnum);
int32_t libccg_fetch_register32 (int regnum);
int64_t libccg_fetch_register64 (int regnum);
void libccg_store_register8 (int regnum, int8_t value);
void libccg_store_register16 (int regnum, int16_t value);
void libccg_store_register32 (int regnum, int32_t value);
void libccg_store_register64 (int regnum, int64_t value);
// int libccg_fetch_register_by_reggrp_idx (
//   register_group_id_t reggrp_id,  int index,  uint8_t *buff );
// int32_t libccg_fetch32_register_by_reggrp_idx (
//   register_group_id_t reggrp_id,  int index );
// int64_t libccg_fetch64_register_by_reggrp_idx (
//   register_group_id_t reggrp_id,  int index );
// int libccg_store_register_by_reggrp_idx (
//   register_group_id_t reggrp_id,  int index,  uint8_t *buff );
// int libccg_store32_register_by_reggrp_idx (
//   register_group_id_t reggrp_id,  int index,  int32_t value );
// int libccg_store64_register_by_reggrp_idx (
//   register_group_id_t reggrp_id,  int index,  int64_t value );
int libccg_read_memory (int32_t address, uint8_t *buff, int length);
int8_t libccg_read_memory8 (int32_t address);
int16_t libccg_read_memory16 (int32_t address);
int32_t libccg_read_memory32 (int32_t address);
int64_t libccg_read_memory64 (int32_t address);
int libccg_write_memory (int32_t address, uint8_t *buff, int length);
void libccg_write_memory8 (int32_t address, int8_t value);
void libccg_write_memory16 (int32_t address, int16_t value);
void libccg_write_memory32 (int32_t address, int32_t value);
void libccg_write_memory64 (int32_t address, int64_t value);
uint32_t libccg_exec_insn (SIM_DESC sd, uint32_t addr, int64_t  bits);

/* Macro to read a register
 *   REG_read_0(REGGRP, INDEX, WIDTH): 
 *     REGGRP: register bank name or register group name.
 *     INDEX:  index in the register bank or the register group.
 *     WIDTH:  width of the register.
 */
#define REG_read_0(REGGRP,INDEX,WIDTH) \
  libccg_fetch_register##WIDTH (\
    libccg_get_gdbregnum_by_reggrp_idx(\
      E_REGGROUP_ID__##REGGRP, INDEX))

#define REG_read8(REGGRP,INDEX)   REG_read_0(REGGRP,INDEX,8)
#define REG_read16(REGGRP,INDEX)  REG_read_0(REGGRP,INDEX,16)
#define REG_read32(REGGRP,INDEX)  REG_read_0(REGGRP,INDEX,32)
#define REG_read64(REGGRP,INDEX)  REG_read_0(REGGRP,INDEX,64)

/* Macro to write a register
 *   REG_write_0(REGGRP, INDEX, WIDTH, VALUE): 
 *     REGGRP: register bank name or register group name.
 *     INDEX:  index in the register bank or the register group.
 *     WIDTH:  width of the register.
 *     VALUE:  value to be written.
 */
#define REG_write_0(REGGRP,INDEX,WIDTH,VALUE) \
  libccg_store_register##WIDTH (\
    libccg_get_gdbregnum_by_reggrp_idx(\
      E_REGGROUP_ID__##REGGRP, INDEX), VALUE)

#define REG_write8(REGGRP,INDEX,VALUE)   REG_write_0(REGGRP,INDEX,8,VALUE)
#define REG_write16(REGGRP,INDEX,VALUE)  REG_write_0(REGGRP,INDEX,16,VALUE)
#define REG_write32(REGGRP,INDEX,VALUE)  REG_write_0(REGGRP,INDEX,32,VALUE)
#define REG_write64(REGGRP,INDEX,VALUE)  REG_write_0(REGGRP,INDEX,64,VALUE)


/* Macros to read memory. */
#define MEM_read8(ADDR)             libccg_read_memory8(ADDR)
#define MEM_read16(ADDR)            libccg_read_memory16(ADDR)
#define MEM_read32(ADDR)            libccg_read_memory32(ADDR)
#define MEM_read64(ADDR)            libccg_read_memory64(ADDR)
/* Macros to write memory. */
#define MEM_write8(ADDR,VALUE)      libccg_write_memory8(ADDR, VALUE)
#define MEM_write16(ADDR,VALUE)     libccg_write_memory16(ADDR, VALUE)
#define MEM_write32(ADDR,VALUE)     libccg_write_memory32(ADDR, VALUE)
#define MEM_write64(ADDR,VALUE)     libccg_write_memory64(ADDR, VALUE)



/* Macros for instruction execution functions. */
#define behavior(MNEMONIC)          static void insn_exec_##MNEMONIC (insn_info_t *insn, int32_t *operands)
#define behavior_INIT(MNEMONIC)     behavior_INIT__##MNEMONIC


#define behavior_INIT__NXOR \
int32_t rd = operands[0];\
int32_t rs2 = operands[1];\
int32_t rs1 = operands[2];\

#define behavior_INIT__BGEU \
int32_t rs2 = operands[0];\
int32_t rs1 = operands[1];\
int32_t const__ = operands[2];\




#endif /*_XXXCPU_SIM_H_*/
