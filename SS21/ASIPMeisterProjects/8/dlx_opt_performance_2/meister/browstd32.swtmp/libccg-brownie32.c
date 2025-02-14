














































































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

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <ctype.h>

#ifndef _XXXCPU_TEST_
#include "opcode/libccg-brownie32.h"
#else  /*_XXXCPU_TEST_*/
#include "libccg-brownie32.h"
#endif /*_XXXCPU_TEST_*/



/* simple-expr.y */
typedef  int64_t (*get_symbol_value_func_t) (const char *str);
int libccg_simple_expr_parse (const char *str, int64_t *value, get_symbol_value_func_t func);


/* Tokenizers for nomal syntax and template syntax. */
static int int_log2 (int x)  ATTRIBUTE_MAY_UNUSED;
static int syntax_tokenizer (const char *syntax, token_t *tokens)  ATTRIBUTE_MAY_UNUSED;
static int template_syntax_tokenizer (const char *syntax, token_t *tokens)  ATTRIBUTE_MAY_UNUSED;
static int64_t get_format_token_value (const char *str);

/* Function prototypes for checking field types. */
static bool  brownie32_is_opcode_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_register_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_immediate_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_multiple02_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_multiple04_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_multiple08_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_multiple16_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_multiple32_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_power2_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;
static bool  brownie32_is_unused_field_type (insn_field_type_t type)  ATTRIBUTE_MAY_UNUSED;

/* Function prototypes for encoding instruction fields. */
static int64_t  brownie32_encode_opcode_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_register_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_immediate_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_multiple02_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_multiple04_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_multiple08_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_multiple16_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_multiple32_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_power2_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;
static int64_t  brownie32_encode_unused_field_type (insn_coding_field_t *field, int64_t bits, int x)  ATTRIBUTE_MAY_UNUSED;

/* Function prototypes for decoding instruction fields. */
static int  brownie32_decode_opcode_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_register_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_immediate_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_multiple02_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_multiple04_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_multiple08_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_multiple16_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_multiple32_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_power2_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_decode_unused_field_type (insn_coding_field_t *field, int64_t bits)  ATTRIBUTE_MAY_UNUSED;

/* Function prototypes for decoding instruction fields. */
static int  brownie32_parse_register_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_immediate_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_multiple02_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_multiple04_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_multiple08_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_multiple16_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_multiple32_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  brownie32_parse_power2_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;
static int  parse_unknown_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)  ATTRIBUTE_MAY_UNUSED;

/* Function prototypes for getting information of instructions. */
static const char* get_insn_mnemonic (insn_id_t id)  ATTRIBUTE_MAY_UNUSED;
static const char* get_insn_syntax_template (insn_id_t id)  ATTRIBUTE_MAY_UNUSED;
static const char* get_operand_string_for_disas (insn_coding_field_t *field, int value)  ATTRIBUTE_MAY_UNUSED;


/* Register names in register groups. */

static const char *regbank__GR[] = { "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", };


/* Register number table for GDB. */

static const int gdb_regnum_regbank__GR[] = { 0 /*R0*/, 1 /*R1*/, 2 /*R2*/, 3 /*R3*/, 4 /*R4*/, 5 /*R5*/, 6 /*R6*/, 7 /*R7*/, 8 /*R8*/, 9 /*R9*/, 10 /*R10*/, 11 /*R11*/, 12 /*R12*/, 13 /*R13*/, 14 /*R14*/, 15 /*R15*/, 16 /*R16*/, 17 /*R17*/, 18 /*R18*/, 19 /*R19*/, 20 /*R20*/, 21 /*R21*/, 22 /*R22*/, 23 /*R23*/, 24 /*R24*/, 25 /*R25*/, 26 /*R26*/, 27 /*R27*/, 28 /*R28*/, 29 /*R29*/, 30 /*R30*/, 31 /*R31*/, };



/* Register bank information. */
static register_bank_info_t register_bank_info[] =
{

{ "GR", 32, 32, "r", &regbank__GR[0], &gdb_regnum_regbank__GR[0], E_INSN_FIELD_TYPE__REGBANK_GR, 1 },
{ 0, 0, 0, 0, 0, 0, E_INSN_FIELD_TYPE__END, 0 },

};


/* Register group information. */
static register_group_info_t register_group_info[] =
{

{ "GR", 32, &regbank__GR[0], &gdb_regnum_regbank__GR[0], E_INSN_FIELD_TYPE__REGBANK_GR },
{ 0, 0, 0, 0, E_INSN_FIELD_TYPE__END },

};


/* Instruction information. */
static insn_info_t insn_info[(int)E_INSN_ID_END] =
{

/*pcm*/
{ 
  "pcm", "pcm %rd0 , %rd1 , %rs0 , %rs1 ",
  32,
  6,
  { 
    { "op_code0", 0, 6, 53, "53", "", E_INSN_FIELD_TYPE__OPCODE, brownie32_encode_opcode_field_type, brownie32_decode_opcode_field_type, 0},
    { "rd1", 6, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rd0", 11, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs1", 16, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs0", 21, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "op_code5", 26, 6, 0, "0", "", E_INSN_FIELD_TYPE__OPCODE, brownie32_encode_opcode_field_type, brownie32_decode_opcode_field_type, 0},
  },
},
/*dcdr*/
{ 
  "dcdr", "dcdr %rd0 , %rd1 , %rs0 , %rs1 ",
  32,
  6,
  { 
    { "op_code0", 0, 6, 56, "56", "", E_INSN_FIELD_TYPE__OPCODE, brownie32_encode_opcode_field_type, brownie32_decode_opcode_field_type, 0},
    { "rd1", 6, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rd0", 11, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs1", 16, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs0", 21, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "op_code5", 26, 6, 0, "0", "", E_INSN_FIELD_TYPE__OPCODE, brownie32_encode_opcode_field_type, brownie32_decode_opcode_field_type, 0},
  },
},
/*four*/
{ 
  "four", "four %rs1 , %rs2 , %rs3 , %rs4 ",
  32,
  6,
  { 
    { "op_code0", 0, 6, 57, "57", "", E_INSN_FIELD_TYPE__OPCODE, brownie32_encode_opcode_field_type, brownie32_decode_opcode_field_type, 0},
    { "rs4", 6, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs3", 11, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs2", 16, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "rs1", 21, 5, 0, "0", "", E_INSN_FIELD_TYPE__REGBANK_GR, brownie32_encode_register_field_type, brownie32_decode_register_field_type, brownie32_parse_register_field_type},
    { "reserved5", 26, 6, 0, "0", "", E_INSN_FIELD_TYPE__OPCODE, brownie32_encode_opcode_field_type, brownie32_decode_opcode_field_type, 0},
  },
},

};

/* Tokens of all instructions templates. */
static token_array_t insn_template_tokens[(int)E_INSN_ID_END];


/* Decoding order of instructions.
 * First search instructions which have longer opcode fields.
 */
static int insn_decoding_order[(int)E_INSN_ID_END] =
{

0, 1, 2, 

};

/* Pointer to parameters of the current parsing syntax.
 * This should be updated every after paring an instruction,
 * and is used in get_format_token_value ().
 */
static params_t *current_params = 0;

static const char *disas_operand_separator = " ";


#define	LEX_VOID                (0) /* neither name nor number */
#define	LEX_NAME                (1) /* may continue a name */
#define LEX_BEGIN_NAME          (2) /* may begin a name */
#define	LEX_EXPRESSION          (4) /* may continue an expression */
#define LEX_BEGIN_EXPRESSION    (8) /* may begin an expression */
#define is_name_beginner(c) \
  ( lex_char_type[(unsigned char) (c)] & LEX_BEGIN_NAME )
#define is_part_of_name(c) \
  ( lex_char_type[(unsigned char) (c)] & LEX_NAME       )
#define is_expression_beginner(c) \
  ( lex_char_type[(unsigned char) (c)] & LEX_BEGIN_EXPRESSION )
#define is_part_of_expression(c) \
  ( lex_char_type[(unsigned char) (c)] & LEX_EXPRESSION       )
#define is_expression_start_marker(c)   (c == '#' || c == '@')

/* Characters types in instruction syntaxes. */
#define XS  (LEX_BEGIN_NAME | LEX_NAME)                         /* A-Z a-z . */
#define XN  (LEX_BEGIN_EXPRESSION | LEX_EXPRESSION | LEX_NAME)  /* 0123456789 */
#define XH  (LEX_EXPRESSION | LEX_BEGIN_NAME | LEX_NAME)        /* ABCDEF abcdef X x */
#define XP  (LEX_BEGIN_EXPRESSION)                              /* +-~ */
static char lex_char_type[] = {
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  /* @ABCDEFGHIJKLMNO */
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  /* PQRSTUVWXYZ[\]^_ */
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  XP, 0,  XP, XS, 0,  /*  !"#$%&'()*+,-./ */
  XN, XN, XN, XN, XN, XN, XN, XN, XN, XN, 0,  0,  0,  0,  0,  0,  /* 0123456789:;<=>? */
  0,  XH, XH, XH, XH, XH, XH, XS, XS, XS, XS, XS, XS, XS, XS, XS, /* @ABCDEFGHIJKLMNO */
  XS, XS, XS, XS, XS, XS, XS, XS, XH, XS, XS, 0,  0,  0,  0,  XS, /* PQRSTUVWXYZ[\]^_ */
  0,  XH, XH, XH, XH, XH, XH, XS, XS, XS, XS, XS, XS, XS, XS, XS, /* `abcdefghijklmno */
  XS, XS, XS, XS, XS, XS, XS, XS, XH, XS, XS, 0,  0,  0,  XP, 0,  /* pqrstuvwxyz{|}~.  */
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS,
  XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS, XS
};
#undef XS
#undef XN
#undef XH
#undef XP



/* Return log2(x) for positive x or x equals to 0, otherwise return 0. */
static int
int_log2 (int x)
{
  int p;
  if (x<=0)
    return 0;
  for ( p=0 ; (1<<p)<x ; p++ )
  {
    /* nop */
  }
  return p;
}

/* Split the given syntax into tokens and return the number of tokens.
 *
 * Tokens are categorized into three groups:
 *      EXPRESSION: immediate values (0,1,2,0xaf,etc.)
 *                  and expressions (#-10, #(1+2), #(2*4), etc.
 *                    which must begin with either '#' or '@',
 *                    and expressios are enclosed by '(' and ')'.)
 *      NAME: names which begin with an alphabet, '_', or '.'.
 *      CODE: something other than EXPRESSION and NAME
 */
static int
syntax_tokenizer (const char *syntax, token_t *tokens)
{
  const char  *s;
  int   token_size  = 0;
  int   token_count = 0;
  bool  flag_force_expression = false;
  token_type_t current_token_type = E_TOKEN_NULL;

  for ( s=&syntax[0] ; *s ; s++ )
  {
    int c = *s;

    if (isspace (c))
    {
      current_token_type = E_TOKEN_NULL;
      continue;
    }

    if (flag_force_expression)
    {
      /* c is the 2nd charater '(' of a complex expression like #(10+1). */
      int exp_len = 0;
      int parenthesis_level = 0;
      const char *s0 = s;
      for ( ; *s0 ; s0++ )
      {
        c = *s0;

        exp_len++;

        if ( c == '(' )
          parenthesis_level++;
        else if ( c == ')')
          parenthesis_level--;
        else if (is_part_of_expression (c))
          continue;

        if (parenthesis_level <= 0)
        {
          /* White space or comma is the end of expression. ex. #-10, #+10 */
          if (isspace (c) || c == ',')
          {
            exp_len--;
            break;
          }
          /* ')' is end of expression. ex. #(10+1) */
          else if (c == ')')
          {
            break;
          }
        }
      }
      flag_force_expression = false;
      token_size += exp_len;
      s = s + exp_len-1;
      continue;
    }
    else if (is_name_beginner (c)
             && current_token_type != E_TOKEN_NAME)
    {
      /* c is the starter of a name. */
      if (0 < token_count)
        tokens[token_count-1].size = token_size;
      token_size = 1;
      tokens[token_count].pos = s;
      tokens[token_count].type = E_TOKEN_NAME;
      current_token_type = E_TOKEN_NAME;
      token_count++;
    }
    else if (is_part_of_name (c)
             && current_token_type == E_TOKEN_NAME)
    {
      /* c is part of a name. */
      token_size++;
      continue;
    }
    else if (is_expression_beginner (c)
             && current_token_type != E_TOKEN_EXPRESSION)
    {
      /* c is the starter of an immediate value. */
      if (0 < token_count)
        tokens[token_count-1].size = token_size;
      token_size = 1;
      tokens[token_count].pos = s;
      tokens[token_count].type = E_TOKEN_EXPRESSION;
      current_token_type = E_TOKEN_EXPRESSION;
      token_count++;
    }
    else if (!flag_force_expression
             && is_part_of_expression (c)
             && current_token_type == E_TOKEN_EXPRESSION)
    {
      /* c is part of an immediate value. */
      token_size++;
      continue;
    }
    else if (!flag_force_expression
             && is_expression_start_marker (c)
             && current_token_type != E_TOKEN_EXPRESSION)
    {
      /* c is the starter of a complex expression like #(10+1). */
      if (0 < token_count)
        tokens[token_count-1].size = token_size;
      token_size = 1;
      tokens[token_count].pos = s+1;
      tokens[token_count].type = E_TOKEN_EXPRESSION;
      current_token_type = E_TOKEN_EXPRESSION;
      flag_force_expression = true;
      token_count++;
    }
    else
    {
      /* c is one of other characters. */
      if (0 < token_count)
        tokens[token_count-1].size = token_size;
      token_size = 1;
      tokens[token_count].pos  = s;
      tokens[token_count].size = token_size;
      tokens[token_count].type = E_TOKEN_CODE;
      current_token_type = E_TOKEN_CODE;
      token_count++;
    }
  }

  if (0 < token_count)
    tokens[token_count-1].size = token_size;

  if (1000 < token_count)
    abort ();

//   {
//     int i;
//     printf ("%s:\n", __FUNCTION__);
//     for ( i=0 ; i<token_count ; i++ )
//     {
//       int k;
//       printf ("\t");
//       for ( k=0 ; k<tokens[i].size ; k++ )
//       {
//         printf ("%c", *(tokens[i].pos + k));
//       }
//       printf ("\n");
//     }
//   }

  return token_count;
}

/* Split the given template syntax into tokens and return the number
 * of tokens. Consecutive '%'s are merged into a single '%'.
 *
 * simple format token:    '%' name
 * modified format token:  '%' name.xxx
 *      xxx is either a single character [a-zA-Z] or 'pair'.
 * 
 */
static int
template_syntax_tokenizer (const char *syntax, token_t *tokens)
{
  int i;
  bool flag_prev_token_percent = false;
  int removed_token_num = 0;
  int token_count = syntax_tokenizer (syntax, tokens);

  /* Initialize modifiers of all tokens. */
  for ( i=0 ; i<token_count ; i++ )
  {
    tokens[i].modifier = 0;
  }
    
  /* If we have tokens '%' and '%', remove the second one. */
  for ( i=0 ; i<token_count ; i++ )
  {
    bool flag_token_percent = false;

    if (*(tokens[i].pos) == '%'
        && tokens[i].size == 1)
    {
      flag_token_percent = true;
    }

    if (flag_token_percent
        && flag_prev_token_percent)
    {
      tokens[i].pos  = 0;
      tokens[i].size = 0;
      tokens[i].type = E_TOKEN_NULL;
      removed_token_num++;
    }

    flag_prev_token_percent = flag_token_percent;
  }

  /* Find format tokens like %name. */
  flag_prev_token_percent = false;
  for ( i=0 ; i<token_count ; i++ )
  {
    if (tokens[i].size != 1
        || *(tokens[i].pos) != '%')
      continue;

    /* we reach here if the condition of (*(tokens[i].pos) == '%' && tokens[i].size == 1) is true. */

    if ((i+1) < token_count
        && tokens[i+1].pos
        && tokens[i+1].type == E_TOKEN_NAME )
    {
      /* Ignore characters after '.' in format tokens. */
      int k;
      const char *s = tokens[i+1].pos;
      for ( k=0 ; k<tokens[i+1].size ; k++, s++ )
      {
        if (*s == '.')
        {
          if ( strncasecmp (s, ".pair", 5) == 0
               && (tokens[i+1].size - k) == 5 )
          {
            /* pair modifier: xx.pair */
            tokens[i+1].modifier = (int)E_TOKEN_FORMAT_MODIFIER_PAIR;
          }
          else if ( (tokens[i+1].size - k) == 2)
          {
            /* prefix modifier: xx.c, xx.p, etc. */
            tokens[i+1].modifier = (int)E_TOKEN_FORMAT_MODIFIER_PREFIX | (0xFF & *(s+1));
          }
          tokens[i+1].size = k;
          break;
        }
      }
      /* The token (i) is the prefix ('%') of format token (i+1). */
      tokens[i].pos  = 0;
      tokens[i].size = 0;
      tokens[i].type = E_TOKEN_NULL;
      removed_token_num++;
      /* The token (i+1) is a format token ('name'). */
      tokens[i+1].type = E_TOKEN_FORMAT;
    }
  }

  /* If tokens are removed, reculculate the number of tokens and
   * rearranges the array of tokens[]. */
  if (0 < removed_token_num)
  {
    int k;
    token_t *tokens_copy;
    int tokens_byte_size = sizeof (token_t) * token_count;

    tokens_copy = (token_t*) malloc (tokens_byte_size);
    memcpy (tokens_copy, tokens, tokens_byte_size);

    for ( i=0, k=0 ; i<token_count ; i++ )
    {
      if (tokens_copy[i].pos)
      {
        tokens[k] = tokens_copy[i];
        k++;
      }
    }
    token_count = k;

    free (tokens_copy);
  }

  return token_count;
}

/* Return TRUE if the two tokens t0 and t1 are equivalent. */
static bool
is_equal_token (token_t *t0, token_t *t1)
{
  bool flag_equal = false;

  if (strncasecmp (t0->pos, t1->pos, t1->size) == 0
      && t0->type == t1->type)
    flag_equal = true;

  return flag_equal;
}

/* Return the value of the given format token symbol.
 * If the symbol is not defined or thre is no way to resolve the
 * symbol, we return 0 as its default value. */
static int64_t
get_format_token_value (const char *str)
{
  int      i;
  int      len = strlen (str);
  int64_t  value = 0;
  params_t *params = current_params;

  if (! current_params)
    return value;

  for ( i=0 ; i<params->size ; i++ )
  {
    insn_coding_field_t *field = params->fields[i];

    if (strncasecmp (str, field->name, len) == 0)
    {
      value = params->values[i];
      break;
    }
  }
  
  return value;
}

/***********************************************************/

/* Return TRUE if the given type is a opcode field type. */
static bool
brownie32_is_opcode_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__OPCODE);
}

/* Return TRUE if the given type is a register field type. */
static bool
brownie32_is_register_field_type (insn_field_type_t type)
{
  return ((int)E_INSN_FIELD_TYPE__REGISTER <= (int)type
          && (int)type <  (int)E_INSN_FIELD_TYPE__END);
}

/* Return TRUE if the given type is a immediate field type. */
static bool
brownie32_is_immediate_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__IMMEDIATE);
}

/* Return TRUE if the given type is a multiple02 field type. */
static bool
brownie32_is_multiple02_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__MULTIPLE02);
}

/* Return TRUE if the given type is a multiple04 field type. */
static bool
brownie32_is_multiple04_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__MULTIPLE04);
}

/* Return TRUE if the given type is a multiple08 field type. */
static bool
brownie32_is_multiple08_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__MULTIPLE08);
}

/* Return TRUE if the given type is a multiple16 field type. */
static bool
brownie32_is_multiple16_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__MULTIPLE16);
}

/* Return TRUE if the given type is a multiple32 field type. */
static bool
brownie32_is_multiple32_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__MULTIPLE32);
}

/* Return TRUE if the given type is a power2 field type. */
static bool
brownie32_is_power2_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__POWER2);
}

/* Return TRUE if the given type is an unused field type. */
static bool
brownie32_is_unused_field_type (insn_field_type_t type)
{
  return (type == E_INSN_FIELD_TYPE__UNUSED);
}


/***********************************************************/

/* Return insn_coding_field_t of */
static insn_coding_field_t *
insn_info_get_field_by_name (const insn_id_t id, const char *name, int len)
{
  insn_coding_field_t *target_field = 0;
  insn_coding_field_t *field = &(insn_info[(int)id].fields[0]);

  for ( /*nop*/ ; field->name ; field++ )
  {
    if (strncasecmp (field->name, name, len) == 0)
    {
      target_field = field;
      break;
    }
  }

  return target_field;
}

/* Return a register name (null terminated string) from the given
 * field type and register index. */
static const char *
get_regname_by_field_type_and_index (
  insn_field_type_t type,
  int32_t           idx)
{
  int i;
  const char *name;
  static const char *null_register_name = "";

  name = null_register_name;

  for ( i=0 ; register_group_info[i].name ; i++ )
  {
    int regsize;
    const char **regnames;

    if (register_group_info[i].field_type != type)
      continue;

    regnames = register_group_info[i].regnames;
    regsize  = register_group_info[i].size;

    if (0 <= idx
        && idx < regsize)
    {
      name = regnames[idx];
      break;
    }
  }

  return name;
}


/* Find a register bank index and register index in its bank with
 * regard to the given register name and its length. */
static void
find_regindex_in_regbank_by_regname (
  /* register bank index */
  int *regbank_idx,
  /* register index in the register bank */
  int *reg_idx,
  /* register name */
  const char *name,
  /* length of the register name */
  int len )
{
  int b;

  *reg_idx = -1;

  for ( b=0 ; register_bank_info[b].regnames ; b++ )
  {
    int r;
    for ( r=0 ; r < register_bank_info[b].size ; r++)
    {
      const char *n = register_bank_info[b].regnames[r];
      if (strncasecmp (n, name, len) == 0)
      {
        *regbank_idx = b;
        *reg_idx = r;
        break;
      }
    }
    if (0 <= *reg_idx)
      break;
  }
}


/***********************************************************/

/* Encode a field of opcode. */
static int64_t
brownie32_encode_opcode_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x  ATTRIBUTE_MAY_UNUSED )
{
  int64_t output = bits;
  output |= (field->value & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of register. */
static int64_t
brownie32_encode_register_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  output |= (x & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of immediate. */
static int64_t
brownie32_encode_immediate_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= (x & ((1<<field->length)-1)) << field->shift;

  return output;
}

/* Encode a field of mutiple of 2. */
static int64_t
brownie32_encode_multiple02_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= ((x>>1) & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of mutiple of 4. */
static int64_t
brownie32_encode_multiple04_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= ((x>>2) & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of mutiple of 8. */
static int64_t
brownie32_encode_multiple08_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= ((x>>3) & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of mutiple of 16. */
static int64_t
brownie32_encode_multiple16_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= ((x>>4) & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of mutiple of 32. */
static int64_t
brownie32_encode_multiple32_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= ((x>>5) & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of power of 2. */
static int64_t
brownie32_encode_power2_field_type (
  insn_coding_field_t *field,
  int64_t bits,
  int x )
{
  int64_t output = bits;
  int64_t default_value = 0;
  int flag_error = libccg_simple_expr_parse (field->value_expr, &default_value, get_format_token_value);

  if (!flag_error && default_value)
    output |= (default_value & ((1<<field->length)-1)) << field->shift;
  else
    output |= (x & ((1<<field->length)-1)) << field->shift;
  return output;
}

/* Encode a field of unused. */
static int64_t
brownie32_encode_unused_field_type (
  insn_coding_field_t *field  ATTRIBUTE_MAY_UNUSED,
  int64_t bits,
  int x   ATTRIBUTE_MAY_UNUSED)
{
  int64_t output = bits;
  return output;
}

/***********************************************************/
/* Decode a field of opcode. */
static int
brownie32_decode_opcode_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int output = (bits >> field->shift) & ((1<<field->length)-1);
  return output;
}

/* Decode a field of register. */
static int
brownie32_decode_register_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int output = (bits >> field->shift) & ((1<<field->length)-1);
  return output;
}

/* Decode a field of immediate. */
static int
brownie32_decode_immediate_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;
  
  return output;
}

/* Decode a field of mutiple of 2. */
static int
brownie32_decode_multiple02_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  output = output << 1;

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;

  return output;
}

/* Decode a field of mutiple of 4. */
static int
brownie32_decode_multiple04_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  output = output << 2;

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;

  return output;
}

/* Decode a field of mutiple of 8. */
static int
brownie32_decode_multiple08_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  output = output << 3;

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;

  return output;
}

/* Decode a field of mutiple of 16. */
static int
brownie32_decode_multiple16_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  output = output << 4;

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;

  return output;
}

/* Decode a field of mutiple of 32. */
static int
brownie32_decode_multiple32_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  output = output << 5;

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;

  return output;
}

/* Decode a field of power of 2. */
static int
brownie32_decode_power2_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int64_t disas_value = 0;
  int disas_expr_len  = strlen (field->disas_expr);
  int output          = (bits >> field->shift) & ((1<<field->length)-1);
  int flag_error
    = libccg_simple_expr_parse (
      field->disas_expr, &disas_value, get_format_token_value);

  if (!flag_error && 0 < disas_expr_len)
    output = disas_value;

  return output;
}

/* Decode a field of unused. */
static int
brownie32_decode_unused_field_type (
  insn_coding_field_t *field,
  int64_t bits )
{
  int output = (bits >> field->shift) & ((1<<field->length)-1);
  return output;
}

/***********************************************************/
/* Functions to parse an operand. */

static int
brownie32_parse_register_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)
{
  int val = -1;
  register_group_info_t *target_reggroup = 0;

  if (! brownie32_is_register_field_type (field->type))
    abort ();

  if (field->type != E_INSN_FIELD_TYPE__REGISTER)
  {
    register_group_info_t *reggroup = &register_group_info[0];
    for ( /*nop*/ ; reggroup->name ; reggroup++ )
    {
      if (reggroup->field_type == field->type)
      {
        target_reggroup = reggroup;
        break;
      }
    }

    if (! target_reggroup)
      /* We cannot find any preferable register groups. */
      abort ();
  }
  else /* field->type != E_INSN_FIELD_TYPE__REGISTER */
  {
    /* By default, we shall use the first register group. */
    target_reggroup = &register_group_info[0];
  }

  /* Find a register named 'name'. */
  {
    int i;
    int num = target_reggroup->size;
    const char **regnames = target_reggroup->regnames;
    for ( i=0 ; i<num ; i++ )
    {
      if (strncasecmp (regnames[i], name, len) == 0)
      {
        /* We have found the register named 'name' in this register groups.
         * The index of this register shall be the return value. */
        val = i;
        break;
      }
    }
  }

  *value = val;

  if (0 <= val)
    return 0;
  else
    return -1;
}

/* Parse an immediate value. */
static int
brownie32_parse_immediate_field_type (
  int64_t *value,
  insn_coding_field_t *field  ATTRIBUTE_MAY_UNUSED,
  const char *name,
  int len )
{
  char  *buff;
  int   flag_error;

  /* To include '\0' at end of name, we use len+1 here. */
  buff = (char *) calloc (1, len+1);
  snprintf (buff, len+1, "%s", name);
  flag_error = libccg_simple_expr_parse (buff, value, get_format_token_value);
  free (buff);

  if (flag_error)
    return -1;

  return 0;
}

/* Parse a value of multiple of 2: 0, 2, 4, 6, 8, ... */
static int
brownie32_parse_multiple02_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)
{
  int flag_error = brownie32_parse_immediate_field_type (value, field, name, len);

  if (!flag_error
      && ((*value)&1) == 0)
  {
    *value = *value >> 1;
  }
  else
  {
    flag_error = -1;
  }

  return flag_error;
}

/* Parse a value of multiple of 4: 0, 4, 8, 12, 16, ... */
static int
brownie32_parse_multiple04_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)
{
  int flag_error = brownie32_parse_immediate_field_type (value, field, name, len);

  if (!flag_error
      && ((*value)&3) == 0)
  {
    *value = *value >> 2;
  }
  else
  {
    flag_error = -1;
  }

  return flag_error;
}

/* Parse a value of multiple of 8: 0, 8, 16, 24, 32, ... */
static int
brownie32_parse_multiple08_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)
{
  int flag_error = brownie32_parse_immediate_field_type (value, field, name, len);

  if (!flag_error
      && ((*value)&7) == 0)
  {
    *value = *value >> 3;
  }
  else
  {
    flag_error = -1;
  }

  return flag_error;
}

/* Parse a value of multiple of 16: 0, 16, 32, 48, 64, 80, ... */
static int
brownie32_parse_multiple16_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)
{
  int flag_error = brownie32_parse_immediate_field_type (value, field, name, len);

  if (!flag_error
      && ((*value)&15) == 0)
  {
    *value = *value >> 4;
  }
  else
  {
    flag_error = -1;
  }

  return flag_error;
}

/* Parse a value of multiple of 32: 0, 32, 64, 96, 128, ... */
static int
brownie32_parse_multiple32_field_type (int64_t *value, insn_coding_field_t *field, const char *name, int len)
{
  int flag_error = brownie32_parse_immediate_field_type (value, field, name, len);

  if (!flag_error
      && ((*value)&31) == 0)
  {
    *value = *value >> 5;
  }
  else
  {
    flag_error = -1;
  }

  return flag_error;
}

/* Parse a value of 2^x == pow (2, x): 1, 2, 4, 8, ... not including 0. */
static int
brownie32_parse_power2_field_type (
  int64_t *value,
  insn_coding_field_t *field,
  const char *name,
  int len )
{
  int flag_error = brownie32_parse_immediate_field_type (value, field, name, len);

  if (!flag_error)
  {
    int i;
    for ( i=0 ; i<32 ; i++ )
    {
      if ( ((1<<i) ^ *value) == 0 )
      {
        break;
      }
    }

    if (i<32)
    {
      *value = i;
    }
    else
    {
      flag_error = -1;
    }
  }
  else
  {
    flag_error = -1;
  }

  return flag_error;
}

static int
parse_unknown_field_type (
  int64_t *value  ATTRIBUTE_MAY_UNUSED,
  insn_coding_field_t *field  ATTRIBUTE_MAY_UNUSED,
  const char *name  ATTRIBUTE_MAY_UNUSED,
  int len  ATTRIBUTE_MAY_UNUSED)
{
  return -1;
}


/***********************************************************/

/* Return the mnemonic of the give instruction. */
static const char*
get_insn_mnemonic (insn_id_t id)
{
  return (const char*) insn_info[id].mnemonic;
}

/* Return the syntax template of the give instruction. */
static const char*
get_insn_syntax_template (insn_id_t id)
{
  return (const char*) insn_info[id].syntax;
}

/* Return the disassembled string of the give instruction field. */
static const char*
get_operand_string_for_disas (insn_coding_field_t *field, int value)
{
  static char str_number[32];
  const char *name = &str_number[0];

  if ((int)E_INSN_FIELD_TYPE__REGISTER <= (int)field->type
      && (int)field->type < (int)E_INSN_FIELD_TYPE__END)
  {
    /* Register operands. */
    int i;
    for ( i=0 ; register_group_info[i].name ; i++ )
    {
      if (register_group_info[i].field_type == field->type)
      {
        const char **array = register_group_info[i].regnames;
        name = array[value];
        break;
      }
    }
  }
  else
  {
    /* Other operands. */
    sprintf (&str_number[0], "%d", value);
  }

  return name;
}


/***********************************************************/

/* Initialize this library. */
void
libccg_init (void)
{
  int i;
  token_t  tokens[256];

  /* Analize tokens of instructions.
   * The tokens will be used to parse
   * instructions in libccg_parse_insn(). */
  for ( i=0 ; i<E_INSN_ID_END ; i++ )
  {
    int token_num;
    const char *template_syntax = insn_info[i].syntax;

    token_num = template_syntax_tokenizer (template_syntax, &tokens[0]);

    insn_template_tokens[i].tokens = malloc (token_num * sizeof (token_t));
    insn_template_tokens[i].size   = token_num;

    memcpy (
      insn_template_tokens[i].tokens,
      &tokens[0],
      token_num * sizeof (token_t));
  }
}

/* Return the instruction information of the given instruction ID. */
insn_info_t *
libccg_get_insn_info (insn_id_t id)
{
  if ((int)id < 0
      || E_INSN_ID_END <= (int)id)
    return 0;

  return &insn_info[id];
}

/* Return the instruction length in bytes of the given instruction ID. */
int
libccg_get_insn_length (insn_id_t id)
{
  int length = 0;

  if ((int)id < 0
      || E_INSN_ID_END <= (int)id)
    return length;

  return ((insn_info[id].length + 7) >> 3);
}

/* Encode the given instruction ID. */
int64_t
libccg_encode_insn (insn_id_t id, params_t *params)
{
  /* Each of elements in params must be stored in the same order of
   * elements of insn_info_t::fields[]. */
  int i;
  int64_t bits = 0;

  if (! params
      || ! params->size)
    abort();

  /* First, opcode fields get processed. */
  for ( i=0 ; i<insn_info[id].field_num ; i++ )
  {
    insn_coding_field_t *field = &(insn_info[id].fields[i]);
    if (brownie32_is_opcode_field_type (field->type))
      bits = field->encoding_func (field, bits, 0);
  }

  /* Second, other fields get processed using the given parameters. */
  for ( i=0 ; i<params->size ; i++ )
  {
    insn_coding_field_t *field = params->fields[i];
    if (field && 0 < field->length)
      bits = field->encoding_func (field, bits, params->values[i]);
  }

  /* Third, the rest of fields get processed. */
  for ( i=0 ; i<insn_info[id].field_num ; i++ )
  {
    int k;
    insn_coding_field_t *field = &(insn_info[id].fields[i]);

    if (brownie32_is_opcode_field_type (field->type))
      continue;

    for ( k=0 ; k<params->size ; k++ )
    {
      if (field == params->fields[k])
        break;
    }
    if (k < params->size)
      continue;

    /* Process instruction fileds which are not anything in
     * params->field[] either opcode. */
    bits = field->encoding_func (field, bits, 0);
  }

  return bits;
}


/* Decoder the given instruction. */
insn_id_t
libccg_decode_insn (int64_t bits)
{
  int i;
  insn_id_t id = E_INSN_ID_END;
  for ( i=0 ; i<(int)E_INSN_ID_END ; i++ )
  {
    int j;
    bool flag_not_matched = false;
    int idx = insn_decoding_order[i];

    for ( j=0 ; j<insn_info[idx].field_num ; j++ )
    {
      insn_coding_field_t *field = &(insn_info[idx].fields[j]);
      if (!brownie32_is_opcode_field_type (field->type))
        continue;

      int64_t value =  (bits >> field->shift) & ((1 << field->length)-1);
      if (value != field->value)
      {
        flag_not_matched = true;
        break;
      }
    }
    if (flag_not_matched)
      continue;

    /* If we reach here, we find the instruction ID for the given
     * bits. */
    id = (insn_id_t)idx;
    break;
  }

  return id;
}


/* Parse the given instruction string. */
insn_id_t 
libccg_parse_insn (params_t *params, const char *syntax)
{
  /* 1. Break the given syntax into words.
   * 2. Identify the instruction corresponding to the given syntax.
   * 3. Compare each of the syntax's words with each of the identified
   *    instruction's syntax word. */

  int       m;
  static    token_t  tokens[256];
  int       token_count = -1;
  insn_id_t id_candidates[E_INSN_ID_END];
  insn_id_t id = E_INSN_ID_END;
  int       id_num = 0;

  /* Update the pointer to parameters for the instruction. */
  current_params = params;
  
  params->size = 0;

  /* 1. Break the given syntax into tokens. */
  token_count = syntax_tokenizer (syntax, &tokens[0]);

  /* 2. Identify the instruction corresponding to the given syntax. */
  {
    int i;
    for ( i=0 ; i<(int)E_INSN_ID_END ; i++ )
    {
      int k;

      if (token_count != insn_template_tokens[i].size)
        continue;

      for ( k=0 ; k<token_count ; k++ )
      {
        token_t *t0 = &tokens[k];
        token_t *t1 = &insn_template_tokens[i].tokens[k];

        if (t1->type != E_TOKEN_FORMAT
            && t0->type == t1->type
            && (!is_equal_token (t0, t1)) )
        {
          break;
        }
      }

      if (k==token_count)
      {
        id_candidates[id_num] = i;
        id_num++;
      }
    }
  }

  if (id_num <= 0)
    return E_INSN_ID_END; /* Syntax error. */

  /* 3. Compare each of the syntax's words with each of the identified
   *    instruction's syntax word. */
  for ( m = 0 ; m < id_num ; m++ )
  {
    int         i;
    int         template_token_count = -1;
    token_t     *template_tokens;
    bool        flag_error = false;
    
    id = id_candidates[m];

    template_tokens      = &(insn_template_tokens[(int)id].tokens[0]);
    template_token_count = insn_template_tokens[(int)id].size;

    for ( i=0 ; i<template_token_count ; i++ )
    {
      token_t *t0 = &tokens[i];
      token_t *t1 = &template_tokens[i];

      if (t1->type != E_TOKEN_FORMAT)
      {
        if (is_equal_token (t0, t1))
        {
          continue;
        }
        else
        {
          flag_error = true;
          break; /* Syntax error. */
        }
      }
      else /* t1->type == E_TOKEN_FORMAT */
      {
        int idx = params->size;
        insn_coding_field_t *field
          = insn_info_get_field_by_name (id, t1->pos, t1->size);

        /* Process format tokens not having modifiers. */
        if (field
            && t1->modifier < (int)E_TOKEN_FORMAT_MODIFIER_PAIR)
        {
          int64_t value = 0;

          flag_error = field->parsing_func (&value, field, t0->pos, t0->size);

          if (flag_error)
            break; /* Syntax error. */

          params->values[idx] = (int32_t)value;
        }

        params->fields[idx] = field;
        params->tokens_in[idx] = t0;
        params->tokens_fmt[idx] = t1;
        params->size++;
      }
    }

    /* Process tokens having modifiers. */
    for ( i=0 ; i < params->size ; i++ )
    {
      int k;
      token_t *t0 = params->tokens_in[i];
      token_t *t1 = params->tokens_fmt[i];
      insn_coding_field_t *field1 = params->fields[i];
      int target_regbank_idx = -1;
      int target_reg_idx = -1;

      if (t1->modifier < (int)E_TOKEN_FORMAT_MODIFIER_PAIR)
        continue;

      /* Find the target register name corresponding to the token t0. */
      for ( k=0 ; k < params->size ; k++ )
      {
        token_t *t2 = params->tokens_in[k];
        insn_coding_field_t *field2 = params->fields[k];

        if (i != k
            && field1 == field2)
        {
          find_regindex_in_regbank_by_regname (
            &target_regbank_idx,
            &target_reg_idx,
            t2->pos,
            t2->size );

          if (target_regbank_idx < 0
              || target_reg_idx < 0)
          {
            /* We cannot find the register corresponding to the token t2. */
            flag_error = true;
            break;
          }

          /* Now we have found the register corresponding to the token t0.
           * The register for t0 is next to the register for t2. */
          target_reg_idx++;

          break;
        }
      }

      /* Check if the token t0 is equal to the target register name. */
      if (target_reg_idx < register_bank_info[target_regbank_idx].size)
      {
        const char *name
          = register_bank_info[target_regbank_idx].regnames[target_reg_idx];
        if (strncasecmp (name, t0->pos, t0->size) == 0)
          params->fields[i] = 0; /* This field is not necessary to be encoded. */
        else
          flag_error = true; /* Syntax error. */
      }
      else
      {
        flag_error = true; /* Syntax error. */
      }

      if (flag_error)
        break; /* Syntax error. */
    }

    if (!flag_error)
      break; /* Parse successfully. */
  }

  if (m == id_num)
    return E_INSN_ID_END; /* Syntax error. */

  /* Remove all token pointers in params. */
  {
    int i;
    for ( i=0 ; i < params->size ; i++ )
    {
      params->tokens_in[i]  = 0;
      params->tokens_fmt[i] = 0;
    }
  }

  return id;
}


/* Disassemble the given instruction.
 * If this function successfully disassembles the instruction, it returns 0.
 * Otherwise, it returns -1.
 */
int
libccg_disasm_insn (int64_t bits, char *disas_syntax)
{
  int i;
  insn_id_t id;
  params_t params;

  if (!disas_syntax)
    return -1;

  disas_syntax[0] = '\0';
  id = libccg_decode_insn (bits);
  if (id == E_INSN_ID_END)
    return -1;

  params.size = insn_info[(int)id].field_num;
  for ( i=0 ; i<insn_info[(int)id].field_num ; i++ )
  {
    insn_coding_field_t *field = &(insn_info[(int)id].fields[i]);
    int64_t value =  (bits >> field->shift) & ((1 << field->length)-1);
    params.fields[i] = field;
    params.values[i] = (int32_t)value;
  }

  if (id != E_INSN_ID_END)
  {
    int         i;
    int         template_token_count;
    token_t     template_tokens[256];
    const char  *template_syntax = insn_info[(int)id].syntax;

    /* Update the pointer to parameters for the instruction. */
    current_params = &params;

    template_token_count
      = template_syntax_tokenizer (template_syntax, &template_tokens[0]);

    for ( i=0 ; i<template_token_count ; i++ )
    {
      token_t *t1 = &template_tokens[i];

      if (t1->type != E_TOKEN_FORMAT)
      {
        strncat (disas_syntax, t1->pos, t1->size);
        /* Append a whitespace ' ' after comma ',' or names. */
        if ((t1->type == E_TOKEN_CODE && t1->size == 1 && *(t1->pos) == ',')
            || t1->type == E_TOKEN_NAME)
          strcat (disas_syntax, disas_operand_separator);
      }
      else /* t1->type == E_TOKEN_FORMAT */
      {
        insn_coding_field_t *field
          = insn_info_get_field_by_name (id, t1->pos, t1->size);
        
        /* Process format tokens not having modifiers. */
        if (! field)
          abort ();

        if (t1->modifier < (int)E_TOKEN_FORMAT_MODIFIER_PAIR)
        {
          /* Registers or immediate values. */
          int value = field->decoding_func (field, bits);
          strcat (disas_syntax, get_operand_string_for_disas (field, value));
        }
        else if (t1->modifier == (int)E_TOKEN_FORMAT_MODIFIER_PAIR)
        {
          /* One of pair register (for example, R1 of pair register R1 and R0). */
          int target_regbank_idx = -1;
          int target_reg_idx = -1;
          int reg0_idx = field->decoding_func (field, bits);
          const char *regname0;

          regname0 = get_regname_by_field_type_and_index (field->type, reg0_idx);
          find_regindex_in_regbank_by_regname (
            &target_regbank_idx,
            &target_reg_idx,
            regname0,
            strlen (regname0) );

          target_reg_idx++;

          if (target_reg_idx < register_bank_info[target_regbank_idx].size)
          {
            const char *regname
              = register_bank_info[target_regbank_idx].regnames[target_reg_idx];
            strcat (disas_syntax, regname);
          }
          else
          {
            abort ();
          }
        }
      }
    }

    /* Update the pointer so that the other functions will not use. */
    current_params = &params;
  }

  return 0;

//   {
//     const int start_marker = '%';
//     const int start_parentheis = '(';
//     const int end_parentheis = ')';
//     char *str;
//     char *syntax_template;
//
//     syntax_template = (char*) calloc (1, strlen (get_insn_syntax_template (id)) +2);
//     strcpy (syntax_template, get_insn_syntax_template (id));
//     str = syntax_template;
//
//     while (*str)
//     {
//       int token_length = 0;
//       char *str_prev = str;
//       /* Find a start marker in the syntax template. */
//       str = strchr (str, start_marker);
//       if (str)
//       {
//         strncat (disas_syntax, str_prev, (size_t)(str-str_prev));
//       }
//       else
//       {
//         strcat (disas_syntax, str_prev);
//         break;
//       }
//       str++;
//       /* Skip consequtive start markers such as %%. */
//       if (*str == start_marker)
//       {
//         strncat (disas_syntax, str, 1);
//         str++;
//         continue;
//       }
//       /* Find a token like %xd. */
//       if ( *str != start_parentheis )
//       {
//         int k;
//         for ( k=0 ; str[k] ; k++ )
//         {
//           if (isalnum (str[k]) == 0)
//           {
//             token_length = k;
//             break;
//           }
//         }
//         if (k==0)
//           continue;
//       }
//       /* Find a token like %(%xd+1). */
//       else /* *str == start_parentheis */
//       {
//         int k;
//         int parenthesis_level = 0;
//         for ( k=0 ; str[k] ; k++ )
//         {
//           if (k!=0 && parenthesis_level==0)
//           {
//             token_length = k;
//             break;
//           }
//           if (str[k] == start_parentheis)
//             parenthesis_level++;
//           else if (str[k] == end_parentheis)
//             parenthesis_level--;
//         }
//       }
//
//       /* Find the value corresponding to the token starting at stk[0]. */
//       if (str[0] != start_parentheis)
//       {
//         /* Process a token like %xd. */
//         int k;
//         char str_number[32];
//         for ( k=0 ; k<insn_info[(int)id].field_num ; k++ )
//         {
//           insn_coding_field_t *field = &(insn_info[(int)id].fields[k]);
//           if (strncasecmp (field->name, &str[0], token_length) == 0)
//           {
//             int value = field->decoding_func (field, bits);
//             strcat (disas_syntax, get_operand_string_for_disas (field, value));
//             break;
//           }
//         }
//       }
//       else /* str[0] == start_parentheis */
//       {
//         /* Process a token like %(xd+1). */
//         int k;
//         int pos;
//         int sub_token_length = 0;
//         int addend_token_length = 0;
//         int value = 0;
//         int field_index = -1;
//         char str_number[32];
//         /* Find the token 'xd' as in %(xd+1). */
//         for ( pos=0 ; str[pos] && pos<token_length ; pos++ )
//         {
//           if (isalnum (str[pos]) == 0)
//           {
//             sub_token_length = pos-1;
//             break;
//           }
//         }
//         for ( k=0 ; k<insn_info[(int)id].field_num ; k++ )
//         {
//           insn_coding_field_t *field = &(insn_info[(int)id].fields[k]);
//           if (strncasecmp (field->name, &str[1], sub_token_length) == 0)
//           {
//             field_index = k;
//             value = field->decoding_func (field, bits);
//             break;
//           }
//         }
//         if (str[pos]=='+' && 0<=field_index)
//         {
//           int addend_pos0 = pos+1;
//           for ( pos++ ; str[pos] && pos<token_length ; pos++ )
//           {
//             if (isdigit (str[pos]) == 0)
//             {
//               insn_coding_field_t *field = &(insn_info[(int)id].fields[field_index]);
//               addend_token_length = pos-addend_pos0;
//               str[pos] = '\0';
//               value += atoi (&str[addend_pos0]);
//               strcat (disas_syntax, get_operand_string_for_disas (field, value));
//               break;
//             }
//           }
//         }
//       }
//       /* Skip the token. */
//       str += token_length;
//     }
//
//     free (syntax_template);
//   }
}

/* Assemble 1 extended instruction.
 * This function returns the lenght of the assembled extended
 * instruction if it successfully assembles the instruction. Otherwise
 * this function returns 0. */
int
libccg_assemble_insn (char *str, uint64_t *pbits, int *plen)
{
  params_t    params_insn;
  uint64_t    bits = 0;
  int         len  = 0;
  insn_id_t   insn_id = libccg_parse_insn (&params_insn, &str[0]);

  if (0 <= (int)insn_id
      && (int)insn_id < E_INSN_ID_END)
  {
    static char buff[256];
    bits = libccg_encode_insn (insn_id, &params_insn);
    len  = libccg_get_insn_length (insn_id);
    libccg_int32_to_string_base2 (&buff[0], (int32_t)bits);
    // printf ("%s: %s\n", &str[0], &buff[0]);
  }
  *pbits = bits;
  *plen  = len;

  /* Update the pointer so that the other functions will not use. */
  current_params = 0;

  return len;
}

/* Return the mnemonic of the give instruction. */
const char*
libccg_get_insn_mnemonic (int64_t bits)
{
  insn_id_t id = libccg_decode_insn (bits);
  if (0 <= (int)id && (int)id < (int)E_INSN_ID_END)
    return (const char*) insn_info[id].mnemonic;
  else
    return (const char*) "";
}

/* Get instruction operands from an instruction raw binary code. */
params_t  *
libccg_get_insn_operands (
  /* Pointer to the Array to store operands */
  params_t  *operands,
  /* Instruction ID */
  insn_id_t id,
  /* Instruction (raw bits) */
  int64_t   bits )
{
  int i;
  int idx;
  insn_info_t  *insn = libccg_get_insn_info (id);

  if ((int)id < 0
      || (int)E_INSN_ID_END <= (int)id )
    abort ();

  idx = 0;
  for ( i=0 ; i<insn->field_num ; i++ )
  {
    insn_coding_field_t *field = &(insn->fields[i]);

    if (! brownie32_is_opcode_field_type (field->type))
    {
      int32_t value = (bits >> field->shift) & ((1 << field->length)-1);
      operands->fields[idx] = field;
      operands->values[idx] = value;
      idx++;
    }
  }
  operands->size = idx;

  return operands;
}

/* Convert the given 32-bit value X into a string. */
char*
libccg_int32_to_string_base2 (char* str, int32_t x)
{
  int i;
  int32_t y = x;
  char *p = &str[0];
  *p = '0';
  p++;
  *p = 'b';
  p++;
  *p = ' ';
  p++;
  for ( i=0 ; i<8 ; i++ )
  {
    int j;
    for ( j=0 ; j<4 ; j++ )
    {
      int c = ((y>>(32-(i*4+j+1))) & 1) ? '1' : '0';
      *p = c;
      p++;
    }
    *p = ' ';
    p++;
  }
  p--;
  *p = '\0';

  return &str[0];
}

/* Return TRUE if the register specified by the GDB register number is
 * an extended register added to the base processor, and if the base
 * processor doesn't have the register. */
bool
libccg_is_extended_regnum (int regnum)
{
  int b;
  bool flag_extended = 0;

  for ( b=0 ; register_bank_info[b].gdb_regnums ; b++ )
  {
    int r;
    for ( r=0 ; r < register_bank_info[b].size ; r++)
    {
      int n = register_bank_info[b].gdb_regnums[r];
      if (n == regnum)
      {
        flag_extended = !(register_bank_info[b].flag_base);
        break;
      }
    }
    if (r < register_bank_info[b].size)
      break;
  }

  return flag_extended;
}

/* Return the register width specified by the GDB register number. */
int
libccg_get_register_width_by_regnum (int regnum)
{
  int b;
  int reg_width = 0;

  for ( b=0 ; register_bank_info[b].gdb_regnums ; b++ )
  {
    int r;
    for ( r=0 ; r < register_bank_info[b].size ; r++)
    {
      int n = register_bank_info[b].gdb_regnums[r];
      if (n == regnum)
      {
        reg_width = register_bank_info[b].width;
        break;
      }
    }
    if (0 < reg_width)
      break;
  }

  return reg_width;
}

/* Return the register name specified by the GDB register number. */
const char *
libccg_get_register_name_by_regnum (int regnum)
{
  int b;
  const char *reg_name = 0;

  for ( b=0 ; register_bank_info[b].gdb_regnums ; b++ )
  {
    int r;
    for ( r=0 ; r < register_bank_info[b].size ; r++)
    {
      int n = register_bank_info[b].gdb_regnums[r];
      if (n == regnum)
      {
        reg_name = register_bank_info[b].regnames[r];
        break;
      }
    }
    if (reg_name)
      break;
  }

  return reg_name;
}

/* Get the GDB register number of the given register specified by the
 * register group ID and index. */
int
libccg_get_gdbregnum_by_reggrp_idx (
  /* register group ID */
  register_group_id_t reggrp_id,
  /* register index in the register group */
  int index )
{
  const int *gdb_regnums_array = register_group_info[reggrp_id].gdb_regnums;
  int regnum = gdb_regnums_array[index];
  return regnum;
}

/* Return the number of all registers. */
int
libccg_get_num_of_all_regs (void)
{
  int i;
  int  num0;
  int  num1;
  static int regs_max_num = 0;

  if (regs_max_num)
    return regs_max_num;

  num0 = 0;
  for ( i=0 ; register_bank_info[i].size ; i++ )
  {
    num0 += register_bank_info[i].size;
  }

  num1 = 0;
  for ( i=0 ; register_bank_info[i].gdb_regnums ; i++ )
  {
    int r;
    for ( r=0 ; r < register_bank_info[i].size ; r++)
    {
      int n = register_bank_info[i].gdb_regnums[r];
      if (num1 < n)
        num1 = n;
    }
  }
  num1++;

  regs_max_num = num0;
  if (num0 < num1)
    regs_max_num = num1;

  return regs_max_num;
}

/*
 * Allocate memory area for registers and fill it with zero.
 * This function should be invoked in sim_open().
 */
void **
libccg_malloc_for_extended_registers (void)
{
  int i;
  int regs_max_num = libccg_get_num_of_all_regs ();
  void **reg_array = calloc (1, regs_max_num * sizeof (void *));

  for ( i=0 ; register_bank_info[i].size ; i++ )
  {
    int k;
    const int *gdb_regnums_array = register_bank_info[i].gdb_regnums;
    for ( k = 0 ; k < register_bank_info[i].size ; k++ )
    {
      int reg_num = gdb_regnums_array[k];
      int reg_size = libccg_get_register_width_by_regnum (reg_num);
      reg_size = ((reg_size + 7) / 8);

      if (regs_max_num <= reg_num)
      {
        fprintf (stderr, "illegal register number");
        abort ();
      }

      reg_array[reg_num] = calloc (1, reg_size * sizeof (void *));
    }
  }

  return &reg_array[0];
}

