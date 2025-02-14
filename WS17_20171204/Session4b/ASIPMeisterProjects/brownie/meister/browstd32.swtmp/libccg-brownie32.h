














































































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

#ifndef __XXXCPU_H_
#define __XXXCPU_H_


#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>


/* Maximum number of fields in a single instruction. */
#define FIELD_MAX_NUM           (16)

/* Maximum number of parameters in a single instruction. */
#define PARAMETERS_MAX_NUM      (32)

#if defined (__GNUC__)
# ifndef ATTRIBUTE_MAY_UNUSED
#  define ATTRIBUTE_MAY_UNUSED    __attribute__((unused))
# endif  /*ATTRIBUTE_MAY_UNUSED*/
#else
# undef  ATTRIBUTE_MAY_UNUSED
# define ATTRIBUTE_MAY_UNUSED
#endif /*defined (__GNUC__)*/


/* Instruction IDs. */
typedef enum insn_id_t
{


E_INSN_NXOR,
E_INSN_BGEU,


E_INSN_ID_END,
} insn_id_t;


/* Instruction encoding field types. */
typedef enum insn_field_type_t
{
  E_INSN_FIELD_TYPE__OPCODE,
  E_INSN_FIELD_TYPE__IMMEDIATE,
  E_INSN_FIELD_TYPE__MULTIPLE02,
  E_INSN_FIELD_TYPE__MULTIPLE04,
  E_INSN_FIELD_TYPE__MULTIPLE08,
  E_INSN_FIELD_TYPE__MULTIPLE16,
  E_INSN_FIELD_TYPE__MULTIPLE32,
  E_INSN_FIELD_TYPE__POWER2,
  E_INSN_FIELD_TYPE__UNUSED,
  E_INSN_FIELD_TYPE__REGISTER,


E_INSN_FIELD_TYPE__REGBANK_GR,


  E_INSN_FIELD_TYPE__END,
} insn_field_type_t;

/* Register group ID number which is used as an index of register_group_info[]. */
typedef enum register_group_id_t
{


E_REGGROUP_ID__GR,


E_REGGROUP_ID__END
} register_group_id_t;

/* Register bank information. */
typedef struct register_bank_info_t
{
  /* Register bank name. */
  const char *name;
  /* Width in bit of each register. */
  int width;
  /* Number of registers in the register bank. */
  int size;
  /* Prefix of each register. */
  const char *prefix;
  /* Register names in this register bank. */
  const char **regnames;
  /* GDB register numbers of this register bank. */
  const int *gdb_regnums;
  /* Instruction field type corresponding to the register bank. */
  insn_field_type_t field_type;
  /* If the base processor has this register bank (==1) or not (==0).*/
  bool flag_base;
} register_bank_info_t;


/* Register bank information. */
typedef struct register_group_info_t
{
  /* Register group name */
  const char *name;
  /* Number of registers in the register group. */
  int size;
  /* Pointer to register names array for the register group. */
  const char **regnames;
  /* GDB register numbers of this register group. */
  const int *gdb_regnums;
  /* Register read function. */
  /* Register write function. */
  /* Instruction field type corresponding to the register group. */
  insn_field_type_t field_type;
} register_group_info_t;


struct  insn_coding_field_t;

typedef  int64_t (*insn_encoding_field_func_t) (struct insn_coding_field_t*, int64_t, int);
typedef  int     (*insn_decoding_field_func_t) (struct insn_coding_field_t*, int64_t);
typedef  int     (*insn_parsing_field_func_t) (int64_t*, struct insn_coding_field_t*, const char *, int);


/* Instruction encoding field information. */
typedef struct insn_coding_field_t
{
  /* Field name */
  const char *name;
  /* Right shift amount down to the LSB. */
  int  shift;
  /* Length of this field. */
  int  length;
  /* Default value of this field. */
  int64_t value;
  /* Default value expression of this field. */
  const char *value_expr;
  /* Expression for disassembling. */
  const char *disas_expr;
  /* Field type. */
  insn_field_type_t  type;
  /* Function to encode this field. */
  insn_encoding_field_func_t  encoding_func;
  /* Function to decode this field. */
  insn_decoding_field_func_t  decoding_func;
  /* Function to parse an operand for this field. */
  insn_parsing_field_func_t  parsing_func;
} insn_coding_field_t;


struct insn_info_t;


/* Instruction information. */
typedef struct insn_info_t
{
  /* Instruction mnemonic. */
  const char *mnemonic;
  /* Instruction syntax. */
  const char *syntax;
  /* Instruction length in bits. */
  int length;
  /* Number of fields in this instruction. */
  int field_num;
  /* Instruction field information. */
  insn_coding_field_t fields[FIELD_MAX_NUM];
} insn_info_t;


/* Token types */
typedef enum token_type_t
{
  E_TOKEN_NULL,
  E_TOKEN_CODE,
  E_TOKEN_NAME,
  E_TOKEN_EXPRESSION,
  E_TOKEN_FORMAT,
  E_TOKEN_FORMAT_MODIFIER_PREFIX = (1<<10),
  E_TOKEN_FORMAT_MODIFIER_PAIR   = (1<<11),
  E_TOKEN_END,
} token_type_t;


/* Token */
typedef struct token_t
{
  /* Token position */
  const char    *pos;
  /* Number of characters in token */
  int           size;
  /* Token type */
  token_type_t  type;
  /* Token modifier (only used for E_TOKEN_FORMAT) */
  int           modifier;
} token_t;


/* Instruction parameters analyzed by the parser. */
typedef struct params_t
{
  int size;
  insn_coding_field_t   *fields[PARAMETERS_MAX_NUM];
  int32_t               values[PARAMETERS_MAX_NUM];
  token_t               *tokens_in[PARAMETERS_MAX_NUM];
  token_t               *tokens_fmt[PARAMETERS_MAX_NUM];
} params_t;


/* Token array. */
typedef struct token_array_t
{
  /* Pointer to the array of tokens. */
  token_t *tokens;
  /* Number of tokens in the array. */
  int     size;
} token_array_t;


/***********************************************************/

/* Initialize this library. */
void libccg_init (void);

/* Return the instruction information of the given instruction ID. */
insn_info_t* libccg_get_insn_info (insn_id_t id);

/* Return the instruction length in bytes of the given instruction ID. */
int libccg_get_insn_length (insn_id_t id);

/* Encode the given instruction ID. */
int64_t libccg_encode_insn (insn_id_t id, params_t *params);

/* Decoder the given instruction. */
insn_id_t libccg_decode_insn (int64_t bits);

/* Parse the given instruction string. */
insn_id_t libccg_parse_insn (params_t *params, const char *syntax);

/* Disassemble the given instruction.
 * If this function successfully disassembles the instruction, it returns 0.
 * Otherwise, it returns -1.
 */
int libccg_disasm_insn (int64_t bits, char *disas_syntax);

/* Assemble 1 extended instruction.
 * This function returns the lenght of the assembled extended
 * instruction if it successfully assembles the instruction. Otherwise
 * this function returns 0. */
int libccg_assemble_insn (char *str, uint64_t *pbits, int *plen);

/* Return the mnemonic of the give instruction. */
const char* libccg_get_insn_mnemonic (int64_t bits);

/* Get instruction operands from an instruction raw binary code. */
params_t *libccg_get_insn_operands (params_t *operands, insn_id_t id, int64_t bits);

/* Convert the given 32-bit value X into a string. */
char* libccg_int32_to_string_base2 (char* str, int32_t x);

/* Return TRUE if the base processor doesn't have the register
 * specified by the GDB register number. */
bool libccg_is_extended_regnum (int regnum);

/* Return the register width specified by the GDB register number. */
int libccg_get_register_width_by_regnum (int regnum);

/* Return the register name specified by the GDB register number. */
const char * libccg_get_register_name_by_regnum (int regnum);

/* Get the GDB register number of the given register specified by the
 * register group ID and index. */
int libccg_get_gdbregnum_by_reggrp_idx (
  register_group_id_t reggrp_id, int index);

/* Return the number of all registers. */
int libccg_get_num_of_all_regs (void);

/* Allocate memory area for registers and fill it with zero.
 * This function should be invoked in sim_open(). */
void ** libccg_malloc_for_extended_registers (void);

#endif /*__XXXCPU_H_*/
