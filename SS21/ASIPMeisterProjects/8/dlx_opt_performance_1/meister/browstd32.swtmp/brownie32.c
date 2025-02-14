

























































/*
 *  Brownie32 (Support Routines)
 *
 *  Copyright (C) 1994,1995  Aaron Sawdey
 *  Copyright (C) 2005,2006  Upwind technology, Inc.
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 *  Email: sawdey@mountains.ee.umn.edu
 *
 *  Snail Mail:
 *
 *  Department of Electrical Engineering
 *  University of Minnesota
 *  4-174 EE/CSci Building
 *  200 Union Street S.E.
 *  Minneapolis, MN 55455
 *
 */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include <signal.h>
#include "rtl.h"
#include "regs.h"
#include "hard-reg-set.h"
#include "real.h"
#include "insn-config.h"
#include "conditions.h"
#include "insn-attr.h"
#include "recog.h"
#include "toplev.h"
#include "output.h"
#include "tree.h"
#include "function.h"
#include "expr.h"
#include "optabs.h"
#include "flags.h"
#include "reload.h"
#include "tm_p.h"
#include "ggc.h"
#include "gstab.h"
#include "hashtab.h"
#include "debug.h"
#include "target.h"
#include "target-def.h"
#include "integrate.h"
#include "langhooks.h"
#include "cfglayout.h"
#include "sched-int.h"
#include "tree-gimple.h"
#include "opts.h"


/* Deleted by Kenichi Nakamura
extern int target_flags;
*/

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

static void brownie32_init_builtins (void);
static rtx  brownie32_expand_builtin (tree, rtx, rtx, enum machine_mode, int);

/* enum reg_class regno_reg_class[] */
enum reg_class  brownie32_regno_reg_class[] = {
GR_REGS, /*r0*/
GR_REGS, /*r1*/
GR_REGS, /*r2*/
GR_REGS, /*r3*/
GR_REGS, /*r4*/
GR_REGS, /*r5*/
GR_REGS, /*r6*/
GR_REGS, /*r7*/
GR_REGS, /*r8*/
GR_REGS, /*r9*/
GR_REGS, /*r10*/
GR_REGS, /*r11*/
GR_REGS, /*r12*/
GR_REGS, /*r13*/
GR_REGS, /*r14*/
GR_REGS, /*r15*/
GR_REGS, /*r16*/
GR_REGS, /*r17*/
GR_REGS, /*r18*/
GR_REGS, /*r19*/
GR_REGS, /*r20*/
GR_REGS, /*r21*/
GR_REGS, /*r22*/
GR_REGS, /*r23*/
GR_REGS, /*r24*/
GR_REGS, /*r25*/
GR_REGS, /*r26*/
GR_REGS, /*r27*/
GR_REGS, /*r28*/
GR_REGS, /*r29*/
GR_REGS, /*r30*/
GR_REGS, /*r31*/
};



/* Added by Kenichi Nakamura */
//#define DEBUG

/* Added by A.O */
//#define DEBUG_Gen_condittional

#define REG_NEEDS_SAVE(i) (regs_ever_live[i] && !(call_used_regs[i])&&i!=1)

static void brownie32_init_libfuncs (void);

static void brownie32_setup_incoming_varargs (CUMULATIVE_ARGS *,
					      enum machine_mode,
					      tree, int *, int);

void mips_declare_common_object (FILE *stream, const char *name,
                            const char *init_string,
                            unsigned HOST_WIDE_INT size,
                            unsigned int align, bool takes_alignment_p);
void mips_declare_object (FILE *stream, const char *name, const char *init_string,
                     const char *final_string, ...);
void mips_declare_object_name (FILE *stream, const char *name,
                          tree decl ATTRIBUTE_UNUSED);
void mips_finish_declare_object (FILE *stream, tree decl, int top_level, int at_end);

char *get_function_name(void)
{
  char *kind = "function";
  if (current_function_decl != 0
      && TREE_CODE (TREE_TYPE (current_function_decl)) == METHOD_TYPE)
    kind = "method";
  
  if (current_function_decl == NULL)
    {
      return "top level";
    }
  else
    {
      //char *name = (*decl_printable_name) (current_function_decl, &kind);
      //return name;
      return lang_hooks.decl_printable_name(current_function_decl, &kind);
    }
}

/* from mips.c */
/* Abort after printing out a specific insn.  */

void abort_with_insn (rtx insn, char *reason)
{
  error (reason);
  debug_rtx (insn);
  abort ();
}

void oops_message(char *str)
{
  fputs(str,stderr);
}

/*
 * for holding comparison operands.
 */
rtx dlx_compare_op0, dlx_compare_op1;
enum machine_mode dlx_compare_mode;


int hard_regno_mode_ok_func(int regno, int mode)
{
  /* modes that require multiple registers we choose to 
     always put in an even/odd pair. This is required on
     the FP side but not on the integer. We do it there anyway
     just to make things easier.
   */
#ifdef DEBUG
printf("hard_regno_mode_ok_func():");
switch(mode)
{
	case QImode:
		printf("QImode, regno=%d\n", regno);
		break;
	case HImode:
		printf("HImode, regno=%d\n", regno);
		break;
	case DFmode:
		printf("DFmode, regno=%d\n", regno);
		break;
	case SFmode:
		printf("SFmode, regno=%d\n", regno);
		break;
	case DImode:
		printf("DImode, regno=%d\n", regno);
		break;
	case SImode:
		printf("SImode, regno=%d\n", regno);
		break;
	default:
		printf("other mode, mode=%d, regno=%d\n", mode, regno);
		break;
}
#endif


  /* int mode, int register */
  if(INTEGRAL_MODE_P(mode) && 
     regno >= FIRST_INT_REG && regno <= LAST_INT_REG)
	{
#ifdef DEBUG
		printf("INTEGRAL_MODE_P(mode)\n");
#endif
		return 1;
	}

#if 000
  /* float mode and float register */
  if(FLOAT_MODE_P(mode) &&
     regno >= FIRST_FP_REG && regno <= LAST_FP_REG)
	{
#ifdef DEBUG
		printf("FLOAT_MODE_P(mode)\n");
#endif
		return 1;
	}
#endif

  /* allow float values in int regs. */
  if(mode == SFmode && regno <= LAST_INT_REG)
	{
#ifdef DEBUG
		printf("SF_MODE\n");
#endif
		return 1;
	}
  /* allow float values in int regs. */
  if(mode == DFmode && regno <= LAST_INT_REG)
	{
#ifdef DEBUG
		printf("DF_MODE\n");
#endif
		return 1;
	}



#ifdef DEBUG
  printf("return 0\n");
#endif
  return 0;
}


#if 000
int reg_class_from_letter(int chr)
{
  switch(chr)
    {
    case 'd':
      return GR_REGS;
    case 'f':
      return FP_REGS;
    case 'z':
      return ST_REGS;
    default:
      return NO_REGS;
    }
}
#endif /* 000 */

int reg_class_from_letter(int chr)
{
  switch (chr)
    {
    case 'd':
      return GR_REGS;
    case 'a':
      return GR_REGS;
#if 000
      /* need following two entries?  */
    case 'b':
      return ALL_REGS;
    case 'y':
      return GR_REGS;
#endif /* 000 */
    default:
      return NO_REGS;
    }
}


void print_operand(FILE *stream, rtx x, int letter)
{
  int code;

  if(PRINT_OPERAND_PUNCT_VALID_P(letter))
    {
      switch(letter)
        {
        case '%':
          putc('%',stream);
          break;
        case '(':
          /* no instructions have been found to fill the slot,
             or we are not optimizing. */
/* Deleted by Kenichi Nakamura
          if(dbr_sequence_length() == 0)
            {
              if(!optimize)
                fputs("\n\tnop\t; delay slot nop",stream);
              else
                fputs("\n\tnop\t; not filled.", stream);
            }
          else
            {
              fputs("\n\t\t;; filled delay slot:",stream);
            }
 */
         break;
        }
      return;
    }
  if(!x)
    {
      error("PRINT_OPERAND x==NULL");
      return;
    }
  code = GET_CODE(x);

  if(letter == 'C')
    { /* conditional */
      char *scode;

      switch(code)
        {

        case EQ:        fputs("eeq",stream); break;
        case NE:        fputs("eneq",stream); break;
        case GT:        fputs("elt",stream); break;
        case LT:        fputs("elt",stream); break;
        case LTU:       fputs("eltu",stream); break;

        case GE: 
        case LE: 
        case GTU: 
        case GEU: 
        case LEU: 
	  abort_with_insn (x, "PRINT_OPERAND, in %%C, unnormal code");
	  break;

        default:
          abort_with_insn (x, "PRINT_OPERAND, illegal insn for %%C");
        }
    }
  else if(letter == 'N')
    { /* reverse conditional */
      switch(code)
        {
        case EQ:        fputs("eneq",stream); break;
        case NE:        fputs("eeq",stream); break;
        case GT:        fputs("elt",stream); break;   //0321
        case GE:        fputs("elt",stream); break;
        case LT:        fputs("elt",stream); break;   //0321
        case LE:        fputs("elt",stream); break;    //0321  
        case GTU:       fputs("eltu",stream); break;    //0321
        case GEU:       fputs("eltu",stream); break;
        case LTU:       fputs("eltu",stream); break;
        case LEU:       fputs("eltu",stream); break;    //0321

        default:
          abort_with_insn (x, "PRINT_OPERAND, illegal insn for %%N");
        }
    }
  else if(letter == 'H') /* print upper 16 bits. */
    { 
      int iv = ((unsigned)(INTVAL(x))>>16)&0xffff;
      if(iv > 0x7fff) iv |= ((-1) ^ 0xffff);
      fprintf(stream,"#%d",iv);
    }
  else if(letter == 'L') /* print lower 16 bits. */
    { 
      int iv = INTVAL(x)&0xffff;
      /* if(iv > 0x7fff) iv |= ((-1) ^ 0xffff); */
      fprintf(stream,"#%d",iv);
    }
  else if(letter == 'S') /* print SYMBOL_REF */
    {
      assemble_name(stream,XSTR(XEXP(x,0),0));
    }
  else if(code == REG)
    {
      int regnum = REGNO(x);
//      if(regnum != FP_STATUS_REG)       /* don't print this one. */
        fputs(reg_names[regnum],stream);
    }
  else if(letter == 'U') /* Unsigned int */
    {
      unsigned int iv = (unsigned)(INTVAL(x));
      iv &= 0xffff;
      fprintf(stream,"#%d",iv);
    }
  else if(letter == 'G') /* siGned int */
    {
      int iv = INTVAL(x);
      fprintf(stream,"#%d",iv);
    }
  else if(code == CONST_INT)
    {
      fprintf(stream,"#0x%x",(INTVAL(x))&0xffff);
    }
  else if(code == MEM)
    {
      rtx adr = XEXP(x, 0);
      code = GET_CODE(adr);
      switch(code)
        {
        case REG:
          fprintf(stream,"(%s)",reg_names[REGNO(adr)]);
          break;
        case PLUS:
          { rtx reg,offs;
            reg = XEXP(adr,0);
            offs = XEXP(adr,1);
            if(GET_CODE(reg) != REG)
              {
                reg = XEXP(adr,1);
                offs = XEXP(adr,0);
              }
            if(GET_CODE(reg) != REG || GET_CODE(offs) != CONST_INT)
              {
                abort_with_insn (x, "PRINT_OPERAND, Can't figure out adr.");
              }
            fprintf(stream,"%d(%s)",INTVAL(offs),reg_names[REGNO(reg)]);
            break;
          }
        case CONST_INT:
          fprintf(stream,"%d(r0)",INTVAL(adr));
          break;
                
        default:
          output_address(x);
          break;
        }
    }
  else
    {
      output_addr_const(stream, x);
    }
}

void print_operand_address(FILE *stream, rtx x)
{
  if (!x)
    {
      error("PRINT_OPERAND_ADDRESS, null pointer");
    }
  else
    {
      switch(GET_CODE(x))
        {
        case SYMBOL_REF:
          fputs(XSTR(x,0),stream);
          break;
        default:
          abort_with_insn(x,"PRINT_OPERAND_ADDRESS, illegal insn #1");
          break;
        }
    }
      
}

int print_operand_punct_valid_p(int code)
{
  switch(code)
    {
    case '(':   /* idea taken from sparc; output nop for %( if
                   not optimizing or the slot is not filled. */
    case '%': 
      return 1;
    }
  return 0;
}


int gen_call_value_1(rtx operands[])
{
  rtx result = operands[0];
  rtx func = operands[1];
  rtx stacksize = operands[2];
  int mode = GET_MODE(result);

#ifdef DEBUG_Gen_condittional
  printf ("gen_call_value_1(rtx operands[] mode=%d",mode);
#endif

  switch(mode)
    {
/*
 [(set (reg:SI 1)
                  (call (match_operand 0 "sym_ref_mem_operand" "")
                        (match_operand 1 "" "i")))]
    HImode:
    QImode:
      printf("Subreg in gcv1.\n");
      emit_call_insn(gen_rtx_SET(mode,
			     gen_rtx_SUBREG(mode,result,0),
			     gen_rtx_CALL(VOIDmode,func,stacksize)));
      break;
*/

    default:
      emit_call_insn(gen_rtx_PARALLEL(VOIDmode,
		       gen_rtvec(2,
				 gen_rtx_SET(mode,result,
					 gen_rtx_CALL(VOIDmode,func,
						 stacksize)),
				 gen_rtx_CLOBBER(VOIDmode,
					 gen_rtx_REG(SImode,3)))));
      break;

    }

  return 0;
}
/*
 * operands[0] will be the branch target.
 * test will be the comparison type.
 * dlx_compare_mode is SImode, SFmode, or DFmode
 * dlx_compare_op0 and dlx_compare_op1 are the things to be 
 *  compared.
 *
 * This routine has to generate a compare and a branch rtx.
 *
 */
//int za1;
#define Dprintf //printf("n=%02d ",1+za1++);printf
//#define DEBUG_Gen_condittional 1
int gen_conditional_branch(rtx operands[], enum rtx_code test)
{
  rtx target = operands[0];
  rtx cres;
  rtx tmp;

#ifdef DEBUG_Gen_condittional
  printf("gen_conditional_branch()\n"); 
  printf("dlx_compare_mode=%x\n", dlx_compare_mode); 
#endif

  switch(dlx_compare_mode)
    {
    case SFmode:
         cres = gen_reg_rtx(SFmode);

//	 if(GET_CODE(dlx_compare_op0) != REG)
            dlx_compare_op0 = force_reg(dlx_compare_mode,dlx_compare_op0);

//   if(GET_CODE(dlx_compare_op1) != REG)
            dlx_compare_op1 = force_reg(dlx_compare_mode,dlx_compare_op1);

      /* generate the compare */
      emit_insn(gen_rtx_SET(SFmode,cres,
                       gen_rtx_SET(dlx_compare_mode,
                               dlx_compare_op0,dlx_compare_op1)));
      /* generate the branch. */
      emit_jump_insn(gen_rtx_SET(VOIDmode,pc_rtx,
                             gen_rtx_SET(VOIDmode,
                                     gen_rtx_MEM(CCmode,const0_rtx),
                                     gen_rtx_MEM(VOIDmode,operands[0]) )));

      break;
    case DFmode:
      /* floating point branch:
         Generate XXf or XXd instruction RTL,
         then generate bfpt/bfpf RTL. */
      /* We need the fp condition code register for this;
         so we just generate the RTL for the hard register.
         I tried using gen_reg_rtx(CCFPmode) but I got an 
         error (something having to do with an illegal spilled
         register). It should work fine this way anyway; there's
         no point in worrying about allocating the FP status reg
         since there is only one. */

         cres = gen_reg_rtx(DFmode);

//         if(GET_CODE(dlx_compare_op0) != REG)
            dlx_compare_op0 = force_reg(dlx_compare_mode,dlx_compare_op0);

//         if(GET_CODE(dlx_compare_op1) != REG)
            dlx_compare_op1 = force_reg(dlx_compare_mode,dlx_compare_op1);

      /* generate the compare */
      emit_insn(gen_rtx_SET(DFmode,cres,
                       gen_rtx_SET(dlx_compare_mode,
                               dlx_compare_op0,dlx_compare_op1)));
      /* generate the branch. */
      emit_jump_insn(gen_rtx_SET(VOIDmode,pc_rtx,
                             gen_rtx_SET(VOIDmode,
                                     gen_rtx_MEM(CCmode,const0_rtx),
                                     gen_rtx_MEM(VOIDmode,operands[0]) )));

/*
   cres = gen_rtx_REG(CCFPmode,FP_STATUS_REG);
   cres = gen_reg_rtx(DFmode);
*/

      /* Ensure both operands of the compare are in registers. */
/*
     if(GET_CODE(dlx_compare_op0) != REG)
        dlx_compare_op0 = force_reg(dlx_compare_mode,dlx_compare_op0);
      if(GET_CODE(dlx_compare_op1) != REG)
        dlx_compare_op1 = force_reg(dlx_compare_mode,dlx_compare_op1);
*/
 
      /* generate the compare */
/*
      emit_insn(gen_rtx_SET(DFmode,cres,
                       gen_rtx_SET(dlx_compare_mode,
                               dlx_compare_op0,dlx_compare_op1)));
*/

      /* generate the branch. */
/*
      emit_jump_insn(gen_rtx_SET(VOIDmode,pc_rtx,
                             gen_rtx_SET(VOIDmode,
                                     gen_rtx_MEM(CCFPmode,const0_rtx),
                                     gen_rtx_MEM(VOIDmode,operands[0]) )));
*/
      break;

    case SImode:

      /* generate a sXX instruction. */
      /* RTX is:
  (set (match_operand:SI 0 "register_operand" "=d,d")
         (eq:SI (match_operand:SI 1 "register_operand" "d,d")
                (match_operand:SI 2 "nonmemory_operand" "d,I")))
       */
      /* ok, we need a pseudo register to store the 
         comparison result in: */
      cres = gen_reg_rtx(SImode);

      /* check if operand 1 is an integer that is too big;
         move it into a register if it is. */
//      if(GET_CODE(dlx_compare_op1) == CONST_INT)
              dlx_compare_op1 = force_reg(SImode, dlx_compare_op1);
//      if(GET_CODE(dlx_compare_op0) == CONST_INT)
              dlx_compare_op0 = force_reg(SImode, dlx_compare_op0);


/* Deleted Amane Otake AO_20061215 */
      /* emit the set instruction. */
/*
      tmp = gen_rtx_SET(SImode, cres, 
                    gen_rtx_SET(SImode, dlx_compare_op0, dlx_compare_op1)); 
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_EQ(SImode, dlx_compare_op0, dlx_compare_op1));
*/

/*
  [(set (pc) (if_then_else (eq:SI (const_int 0)
                                  (match_operand:SI 0 "register_operand"))
                           (label_ref (match_operand 1 "" "")) (pc)))]
*/

/* Modified Amane Otake AO_20061215 */
      /* emit the branch instruction. */
/*
      tmp = gen_rtx_SET(VOIDmode, pc_rtx, 
                    gen_rtx_SET(VOIDmode,
                            gen_rtx_SET(SImode, const0_rtx, cres),
                            gen_rtx_REG(VOIDmode,operands[0]))); 
*/

/* Modified Amane Otake AO_20061215 */
      if ( test == EQ)
      {
Dprintf("EQ(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_EQ (SImode, dlx_compare_op0, dlx_compare_op1));  //EQ:Error(insn) MINUS:OK NE:Error LEUdelete&EQ:Error LT:x LTU:ok


      emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_NE(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
      }
      else if( test == NE)
     {
Dprintf("NE(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_NE (SImode, dlx_compare_op0, dlx_compare_op1));


      emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_NE(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
      else if( test == LT)
     {
Dprintf("LT(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LT (SImode, dlx_compare_op0, dlx_compare_op1));


      emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_NE(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
     else if( test == LE)
     {
Dprintf("LE(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LT (SImode, dlx_compare_op1, dlx_compare_op0));


      emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                          gen_rtx_EQ(SImode, const0_rtx, cres),
                          gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
      else if( test == GE)
     {
Dprintf("GE(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LT (SImode, dlx_compare_op0, dlx_compare_op1));


      emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_EQ(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
      else if( test == GT)
     {
Dprintf("GT(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LT (SImode, dlx_compare_op1, dlx_compare_op0));


      emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_NE(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
     else if( test == LTU)
     {
Dprintf("LTU(%x)\n",test);
      /* emit the set instruction */
        tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LTU (SImode, dlx_compare_op0, dlx_compare_op1));
        emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_NE(SImode, const0_rtx, cres),		// C.Katano Dec-15-06 gen_rtx_EQ -> gen_rtx_NE
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
     else if( test == LEU)
     {
Dprintf("LEU(%x)\n",test);
/* "<" */
      /* emit the set instruction */
        tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LTU (SImode, dlx_compare_op1, dlx_compare_op0));
        emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_EQ(SImode, const0_rtx, cres),              // C.Katano Dec-15-06 gen_rtx_EQ -> gen_rtx_NE
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
     else if( test == GEU)
     {
Dprintf("GEU(%x)\n",test);
      /* emit the set instruction */
        tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LTU (SImode, dlx_compare_op0, dlx_compare_op1));
        emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_EQ(SImode, const0_rtx, cres),              // C.Katano Dec-15-06 gen_rtx_NE -> gen_rtx_EQ
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
     else if( test == GTU)
     {
Dprintf("GTU(%x)\n",test);
      /* emit the set instruction */
      /* C.Katano Dec-15-06 2nd,3rd param change (OLD:gen_rtx_LTU(SImode, dlx_compare_op0, dlx_compare_op1));) */
        tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_LTU (SImode, dlx_compare_op1, dlx_compare_op0));


        emit_insn( tmp);

      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_NE(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
     else 
     {
Dprintf("??(%x)\n",test);
      /* emit the set instruction */
      tmp = gen_rtx_SET(SImode, cres,
                    gen_rtx_MINUS (SImode, dlx_compare_op0, dlx_compare_op1));


      emit_insn( tmp);
      /* emit the branch instruction. */
        tmp = gen_rtx_SET( VOIDmode, pc_rtx,
                    gen_rtx_IF_THEN_ELSE(VOIDmode,
                            gen_rtx_EQ(SImode, const0_rtx, cres),
                            gen_rtx_LABEL_REF(Pmode,operands[0]), pc_rtx));
         emit_jump_insn( tmp);
     }
      break;
    }
}

/*
 * Set up stack and frame pointers, and prepare
 * for function entry.
 *
 * Stack map:
 *
 * incoming args
 *                      <--------------------------- new frame pointer
 * saved frame pointer          4 bytes
 * saved return addr            4 bytes
 *
 * local variables:             size rounded up to a multiple of 4.
 *
 * save caller regs area        (4*n_regs_to_save)
 * 
 *
 */

/*
 * Used for internal labels.
 * Characters not in [a-zA-Z0-9] are mapped to "_".
 */
static char fn_minus_ext_buf[200];

char *fn_minus_ext(void)
{
  char *x;
  if(main_input_filename == NULL) return "";
  strcpy(fn_minus_ext_buf,main_input_filename);
  x = strrchr(fn_minus_ext_buf,'.');
  if(x != NULL) *x = '\0';

  for(x = fn_minus_ext_buf ; *x ; x++) {
    if(!isalnum(*x)) *x = '_';
  }
  return fn_minus_ext_buf;
}

asm_output_ascii(FILE *stream, unsigned char *ptr, int len)
{ 
  int i,p;
  unsigned int c;
  fputs("\t.ascii \"",stream);
  i = 0;
  p = 0;
  do 
    { 
      c = ptr[i++];
      if(c < 0x80 && isprint(c)) {
	switch(c) {
	case '\"': fputs("\\\"",stream); p+=2; break;
	case '\'': fputs("\\\'",stream); p+=2; break;
	case '\\': fputs("\\\\",stream); p+=2; break;

	default:
	  fputc(c,stream); p++;
	}
      } else {
	switch(c) {
	case '\a': fputs("\\a",stream); p+=2; break;
	case '\b': fputs("\\b",stream); p+=2; break;
	case '\f': fputs("\\f",stream); p+=2; break;
	case '\n': fputs("\\n",stream); p+=2; break;
	case '\r': fputs("\\r",stream); p+=2; break;
	case '\t': fputs("\\t",stream); p+=2; break;
	case '\v': fputs("\\v",stream); p+=2; break;
	default:
	  fprintf(stream,"\\%03o",c); 
	  p+=4; 
	  break;
	}
      }
      if(p >= 70 && i < len) {
	fputs("\"\n\t.ascii \"",stream);
	p = 0;
      }
    } while(i < len); 
  fputs("\"\n",stream);
}

/* short cut */
#define SP reg_names[STACK_POINTER_REGNUM]
#define FP reg_names[FRAME_POINTER_REGNUM]
#define A_reg reg_names[B32_A_REGNUM]

function_prologue (FILE *file, int size)
{
  int reg_so;
  int local_space;
  int i;
  int stkoff;
  int n_regs_to_save;
  char *name = get_function_name();
  int is_main = 0;

#ifdef DEBUG_Gen_condittional
  printf( "A function_prologue (FILE *file, int size)\n" );
#endif

  /* Save arg registers to the stack if necessary.  */
  if (TARGET_QUICKCALL && current_function_args_info.anonymous_args)
    {
      int offset;
      for (i = GP_ARG_FIRST, offset = 0; i <= GP_ARG_LAST; i++, offset += 4)
	fprintf (file, "\tsw\t%d(%s),r%d\t; push register for parm.\n",
		 offset, SP, i);
    }

  if(!strcmp("main",name)) is_main = 1;

  stkoff = 0;
  n_regs_to_save = 0;

  if(!is_main) {
    for(i = FIRST_INT_REG; i <= LAST_INT_REG ; i++)
      if(REG_NEEDS_SAVE(i)) {
	stkoff += 4;
	n_regs_to_save++;
      }
      
    stkoff = (stkoff+7)&(~7);
  }

  /*  local_space = size + 8 + stkoff; */
  /* keep register save area for var. args.  saved code are in callee.  */
  local_space = size + 8 + stkoff + current_function_outgoing_args_size;

  fprintf(file,";  Function '%s'; %d bytes of locals, %d regs to save, %d byte of out. args. size.\n",
          name, size, n_regs_to_save, current_function_outgoing_args_size);

  fprintf (file, "\tsw\t-4(%s),r3\t; push LinkRegister(r3)\n",  SP);
  fprintf (file, "\tsw\t-8(%s),%s\t; push FrameRegister(%s)\n",  SP, FP, FP);
  fprintf (file, "\taddi\t%s, %s,#-8\t; FramePtr = StackPtr-8\n", FP, SP);
  if (CONST_OK_FOR_LETTER_P (local_space, 'I'))
    fprintf (file, "\taddi\t%s,%s,#-%d\t; alloc local storage\n", SP, SP,
            local_space);
  else
    {
      /*
       addi r6, r0, #uh
       lsoi r6,r6, #lh
       sub  r5, r5, r6
       */
      int lh = local_space & 0xffff;
      int uh = ((unsigned) local_space >> 16) & 0xffff;
      if (uh > 0x7fff)
        uh |= ((-1) ^ 0xffff);
      fprintf (file, " addi    %s, r0, #%d\n", A_reg, uh);
      fprintf (file, " lsoi    %s, %s, #%d\n", A_reg, A_reg, lh);
      fprintf (file, " sub     %s, %s, %s\n", SP, SP, A_reg);
    }

  reg_so = current_function_outgoing_args_size;  /* start just above out going args. area */

  if(!is_main)
    {
      for(i = FIRST_INT_REG ; i <= LAST_INT_REG ; i++)
        {
          if(REG_NEEDS_SAVE(i))
            {
	      fprintf (file, "\tsw\t%d(%s),%s\t; save r(%s)\n",
		       reg_so, SP, reg_names[i], reg_names[i]);
              reg_so += 4;
            }
        }
    }
}

int log_of_two(int x)
{
  int y;

  x >>= 1;
  for(y=0; x; x>>=1, y++);

  return y;
}

function_epilogue (FILE *file, int size)
{
  int i;
  int reg_so;
  char *name = get_function_name();
  int is_main = 0;

#ifdef DEBUG_Gen_condittional
	printf( "A function_epilogue (FILE *file, int size)\n");
#endif

  if(!strcmp("main",name)) is_main = 1;

  reg_so = current_function_outgoing_args_size;  /* start just above out going args. area */

  if(!is_main) 
    {
      for(i = FIRST_INT_REG ; i <= LAST_INT_REG ; i++)
        {
          if(REG_NEEDS_SAVE(i))
            {
              fprintf (file, "\tlw\t%s,%d(%s)\t; restore r(%s).\n",
		       reg_names[i], reg_so, SP, reg_names[i]);
              reg_so += 4;
            }
        }

        fputs("\tnop\n",file);

    }
#if 000
      fputs("\tlw\tr3,4(r5)\t; pop LinkRegister(r3)\n",file);
      fputs("\taddi\tr6,r5,#8\t; StackPointer = FramePointer+8\n",file);
      fputs("\tlw\tr5,(r5)\t\t; restore FramePointer\n",file);
      fputs("\tjpr\tr3\t\t; return\n",file);
#endif /* 000 */
      fprintf (file, "\tlw\tr3,4(%s)\t; pop LinkRegister(r3)\n", FP);
      fprintf (file, "\taddi\t%s,%s,#8\t; StackPointer = FramePointer+8\n",
	       SP, FP);
      fprintf (file, "\tlw\t%s,(%s)\t\t; restore FramePointer\n", FP, FP);
      fputs("\tjpr\tr3\t\t; return\n",file);

#ifdef DEBUG_Gen_condittional
	printf( "A function_epilogue (FILE *file, int size)\n");
#endif
}


/* Length of line when printing switch values.  */
#define MAX_LINE 75

#undef TARGET_ASM_FILE_START
#define TARGET_ASM_FILE_START asm_file_start

#undef  TARGET_INIT_BUILTINS
#define TARGET_INIT_BUILTINS  brownie32_init_builtins
#undef  TARGET_EXPAND_BUILTIN
#define TARGET_EXPAND_BUILTIN brownie32_expand_builtin

asm_file_start()
{
#ifdef NO_LOADER 
  fputs(".data 0x100\n.text 0x8000\n", asm_out_file);
#endif
  print_switch_values (asm_out_file, 0, MAX_LINE, ";", " ", "\n");
}

struct traptab_s {
  char *name;
  int num;
} traptab[] = {
  { "_exit",   0 },
  { "_open",   1 },
  { "_close",  2 },
  { "_read",   3 },
  { "_write",  4 },
  { "_printf", 5 },
  { "_sqrt",   29 },
  { NULL,      0 }};

asm_file_end(FILE *file)
{
  int i;

#ifdef NO_LOADER
  text_section();

  i = 0;
  while(traptab[i].name != NULL)
    {
      output_trap_def(file,traptab[i].name,traptab[i].num);
      i++;
    }
#endif
}

output_trap_def(FILE *file, char *name, int num)
{
  fprintf(file,".global %s\n%s:\t",name,name);
  fprintf(file,"\ttrap\t#%d\n",num);
  fputs("\tjr\tr3\n",file);
  fputs("\tnop\n\n",file);
}

#undef TARGET_INIT_LIBFUNCS
#define TARGET_INIT_LIBFUNCS brownie32_init_libfuncs

#undef TARGET_SETUP_INCOMING_VARARGS
#define TARGET_SETUP_INCOMING_VARARGS brownie32_setup_incoming_varargs


#include "config/gofast.h"

static void
brownie32_init_libfuncs (void)
{
#ifdef DEBUG
       printf("brownie32_init_libfuncs()\n");
#endif
#if 0
       set_optab_libfunc (add_optab, SFmode, "__b32_addsf3");
       set_optab_libfunc (sub_optab, SFmode, "__b32_subsf3");
       set_optab_libfunc (smul_optab, SFmode, "__b32_mulsf3");
       set_optab_libfunc (sdiv_optab, SFmode, "__b32_divsf3");
       set_optab_libfunc (cmp_optab, SImode, "__b32_cmpsi2");
       set_optab_libfunc (ucmp_optab, SImode, "__b32_ucmpsi2");
#endif
}

/* Implement TARGET_HANDLE_OPTION.  */

static int
brownie32_handle_option (size_t code,
			 const char *arg, int value ATTRIBUTE_UNUSED)
{
  switch (code)
    {
    case OPT_mquickcall:
      target_flags |= MASK_QUICKCALL;
	return 1;

    case OPT_mno_quickcall:
      target_flags &= ~MASK_QUICKCALL;
	return 1;

    default:
      return 1;
    }
}


#undef TARGET_DEFAULT_TARGET_FLAGS
#define TARGET_DEFAULT_TARGET_FLAGS         (MASK_QUICKCALL)


#undef TARGET_HANDLE_OPTION
#define TARGET_HANDLE_OPTION brownie32_handle_option



#undef  TARGET_ASM_FUNCTION_PROLOGUE
#define TARGET_ASM_FUNCTION_PROLOGUE function_prologue
#undef  TARGET_ASM_FUNCTION_EPILOGUE
#define TARGET_ASM_FUNCTION_EPILOGUE function_epilogue


struct gcc_target targetm = TARGET_INITIALIZER;

/* Declare a common object of SIZE bytes using asm directive INIT_STRING.
   NAME is the name of the object and ALIGN is the required alignment
   in bytes.  TAKES_ALIGNMENT_P is true if the directive takes a third
   alignment argument.  */

void mips_declare_common_object (FILE *stream, const char *name,
                            const char *init_string,
                            unsigned HOST_WIDE_INT size,
                            unsigned int align, bool takes_alignment_p)
{
  if (!takes_alignment_p)
    {
      size += (align / BITS_PER_UNIT) - 1;
      size -= size % (align / BITS_PER_UNIT);
      mips_declare_object (stream, name, init_string,
                           "," HOST_WIDE_INT_PRINT_UNSIGNED "\n", size);
    }
  else
    mips_declare_object (stream, name, init_string,
                         "," HOST_WIDE_INT_PRINT_UNSIGNED ",%u\n",
                         size, align / BITS_PER_UNIT);
}

/* Emit either a label, .comm, or .lcomm directive.  When using assembler
   macros, mark the symbol as written so that mips_file_end won't emit an
   .extern for it.  STREAM is the output file, NAME is the name of the
   symbol, INIT_STRING is the string that should be written before the
   symbol and FINAL_STRING is the string that should be written after it.
   FINAL_STRING is a printf() format that consumes the remaining arguments.  */

void mips_declare_object (FILE *stream, const char *name, const char *init_string,
                     const char *final_string, ...)
{
  va_list ap;

  fputs (init_string, stream);
  assemble_name (stream, name);
  va_start (ap, final_string);
  vfprintf (stream, final_string, ap);
  va_end (ap);

  if (!TARGET_EXPLICIT_RELOCS)
    {
      tree name_tree = get_identifier (name);
      TREE_ASM_WRITTEN (name_tree) = 1;
    }
}

#ifdef ASM_OUTPUT_SIZE_DIRECTIVE
extern int size_directive_output;

/* Implement ASM_DECLARE_OBJECT_NAME.  This is like most of the standard ELF
   definitions except that it uses mips_declare_object() to emit the label.  */

void mips_declare_object_name (FILE *stream, const char *name,
                          tree decl ATTRIBUTE_UNUSED)
{
#ifdef ASM_OUTPUT_TYPE_DIRECTIVE
  ASM_OUTPUT_TYPE_DIRECTIVE (stream, name, "object");
#endif

  size_directive_output = 0;
  if (!flag_inhibit_size_directive && DECL_SIZE (decl))
    {
      HOST_WIDE_INT size;

      size_directive_output = 1;
      size = int_size_in_bytes (TREE_TYPE (decl));
      ASM_OUTPUT_SIZE_DIRECTIVE (stream, name, size);
    }

  mips_declare_object (stream, name, "", ":\n", 0);
}

/* Implement ASM_FINISH_DECLARE_OBJECT.  This is generic ELF stuff.  */

void mips_finish_declare_object (FILE *stream, tree decl, int top_level, int at_end)
{
  const char *name;

  name = XSTR (XEXP (DECL_RTL (decl), 0), 0);
  if (!flag_inhibit_size_directive
      && DECL_SIZE (decl) != 0
      && !at_end && top_level
      && DECL_INITIAL (decl) == error_mark_node
      && !size_directive_output)
    {
      HOST_WIDE_INT size;

      size_directive_output = 1;
      size = int_size_in_bytes (TREE_TYPE (decl));
      ASM_OUTPUT_SIZE_DIRECTIVE (stream, name, size);
    }
}

#if 0 // 20070409
/* function for FUNCTION_ARG(cum,mode,type,named) from "stormy16" */
rtx
brownie32_function_arg (CUMULATIVE_ARGS cum, enum machine_mode mode,
			tree type, int named ATTRIBUTE_UNUSED, int arg_num)
{
  
  if (mode == VOIDmode)
    return const0_rtx;

  if (    targetm.calls.must_pass_in_stack (mode, type) 
       || cum + BROWNIE32_WORD_SIZE (type, mode) > NUM_ARGUMENT_REGISTERS
       || arg_num > 8 ) /* if number of argment is over 8, all arguments are passed in stack */
    return 0;

//    return gen_rtx_REG (mode, cum+2);
    return gen_rtx_REG (mode, cum);
}


/* function for FUNCTION_ARG_ADVANCE(cum,mode,type,named) from "stormy16" */

/* Return an updated summarizer variable CUM to advance past an
   argument in the argument list.  The values MODE, TYPE and NAMED
   describe that argument.  Once this is done, the variable CUM is
   suitable for analyzing the *following* argument with
   `FUNCTION_ARG', etc.
 */
CUMULATIVE_ARGS
brownie32_function_arg_advance (CUMULATIVE_ARGS cum, enum machine_mode mode,
				tree type, int named ATTRIBUTE_UNUSED)
{
  /* If an argument would otherwise be passed partially in registers,
     and partially on the stack, the whole of it is passed on the
     stack.  */

  if (cum < NUM_ARGUMENT_REGISTERS
      && cum + BROWNIE32_WORD_SIZE (type, mode) > NUM_ARGUMENT_REGISTERS)
      cum = NUM_ARGUMENT_REGISTERS;
  
  cum += BROWNIE32_WORD_SIZE (type, mode);

  return cum;
}

/* Compute the number of word sized registers needed to hold a
   function argument of mode INT_MODE and tree type TYPE.  from fr30 */
int
brownie32_num_arg_regs (enum machine_mode mode, tree type)
{
  int size;

  if (targetm.calls.must_pass_in_stack (mode, type))
    return 0;

  if (type && mode == BLKmode)
    size = int_size_in_bytes (type);
  else
    size = GET_MODE_SIZE (mode);

  return (size + UNITS_PER_WORD - 1) / UNITS_PER_WORD;
}
#endif //20070409
#endif /* ASM_OUTPUT_SIZE_DIRECTIVE */


/* Determine where to put an argument to a function.
   Value is zero to push the argument on the stack,
   or a hard register in which to store the argument.

   MODE is the argument's machine mode.
   TYPE is the data type of the argument (as a tree).
    This is null for libcalls where that information may
    not be available.
   CUM is a variable of type CUMULATIVE_ARGS which gives info about
    the preceding args and about the function being called.
   NAMED is nonzero if this argument is a named parameter
    (otherwise it is an extra parameter matching an ellipsis).  */

rtx
brownie32_function_arg (cum, mode, type, named)
     CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int named;

{
  rtx result = 0;
  int size, align;
  int regpass = 0;     /* # of register for function arg. passing.  */

#if 0
  /* 1. when varargs arg, arg should pushed.  */
  if (!named)
    return 0;
#endif

  if (TARGET_QUICKCALL)
    regpass = 8;

  /* 2. size as its mode */
  if (mode == BLKmode)
    {
      if (regpass)
	{
	  int size = int_size_in_bytes (type);
	  if (((size + cum->nbytes) <= (regpass * UNITS_PER_WORD))
	      && (((cum->nbytes / UNITS_PER_WORD) <= (regpass - 1))))
	    return gen_rtx_REG (mode,
				GP_ARG_FIRST + (cum->nbytes / UNITS_PER_WORD));
	}
      return 0; /* stack passing for structure */
    }
  else
    size = GET_MODE_SIZE (mode);

  /* align and calc cumutive arg size.  */
  if (type)
    align = TYPE_ALIGN (type) / BITS_PER_UNIT;
  else
    align = size;

#if 0
  cum->nbytes = (cum->nbytes + align - 1) & ~(align - 1);
#endif
  cum->nbytes = ((GP_ARG_FIRST * 4 + cum->nbytes + align - 1) & ~(align - 1))
      - (GP_ARG_FIRST * 4);

  /* 3. when cumutive arg size is greater than regpass words,
   *    it's stack passing.
   */
  if (cum->nbytes > (regpass * UNITS_PER_WORD))
    return 0;

  if ((type == NULL_TREE) && (cum->nbytes + size) > (regpass * UNITS_PER_WORD))
    return 0;

#if 0
  /* 4. when DF mode, cumutive arg size is greater than 0,
        it's stack passing.  */
  if (mode == DFmode)
    {
      if (cum->nbytes > 0)
	return 0;		
    }
#endif /* 0 */

  /* 5. select the register number as cumutive arg size.  */

  if (regpass == 0)
    return result;

  switch (cum->nbytes / UNITS_PER_WORD)
    {
    case 0:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 0);
      break;
    case 1:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 1);
      break;
    case 2:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 2);
      break;
    case 3:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 3);
      break;
   case 4:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 4);
      break;
    case 5:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 5);
      break;
    case 6:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 6);
      break;
    case 7:
      result = gen_rtx_REG (mode, GP_ARG_FIRST + 7);
      break;
    default:
      result = 0;
    }
  return result;
}


#if 000
//--------------- Double move exe C.katano 070621 -->
/* Return one word of double-word value OP, taking into account the fixed
   endianness of certain registers.  HIGH_P is true to select the high part,
   false to select the low part.  */
//-- results
#define TARGET_BIG_ENDIAN 1
#define LO_REGNUM 28
#define HI_REGNUM 29
#define FP_REG_P(n)  FIRST_FP_REG
//-- results
rtx
mips_subword (rtx op, int high_p)
{
  unsigned int byte;
  enum machine_mode mode;

  mode = GET_MODE (op);
  if (mode == VOIDmode)
    mode = DImode;

  if (TARGET_BIG_ENDIAN ? !high_p : high_p)
    byte = UNITS_PER_WORD;
  else
    byte = 0;

  if (REG_P (op))
    {
      if (FP_REG_P (REGNO (op)))
	return gen_rtx_REG (word_mode, high_p ? REGNO (op) + 1 : REGNO (op));
      if (REGNO (op) == HI_REGNUM)
	return gen_rtx_REG (word_mode, high_p ? HI_REGNUM : LO_REGNUM);
    }
  //#if 0
  if (MEM_P (op))
    return mips_rewrite_small_data (adjust_address (op, word_mode, byte));
  //#endif
  return simplify_gen_subreg (word_mode, op, mode, byte);
}
#endif /* 000 */


/* Return true if a 64-bit move from SRC to DEST should be split into two.  */
#if 0
bool
mips_split_64bit_move_p (rtx dest, rtx src)
{
  if (TARGET_64BIT)
    return false;

  /* FP->FP moves can be done in a single instruction.  */
  if (FP_REG_RTX_P (src) && FP_REG_RTX_P (dest))
    return false;

  /* Check for floating-point loads and stores.  They can be done using
     ldc1 and sdc1 on MIPS II and above.  */
  if (mips_isa > 1)
    {
      if (FP_REG_RTX_P (dest) && MEM_P (src))
	return false;
      if (FP_REG_RTX_P (src) && MEM_P (dest))
	return false;
    }
  return true;
}

#endif

#if 000
/* Split a 64-bit move from SRC to DEST assuming that
   mips_split_64bit_move_p holds.

   Moves into and out of FPRs cause some difficulty here.  Such moves
   will always be DFmode, since paired FPRs are not allowed to store
   DImode values.  The most natural representation would be two separate
   32-bit moves, such as:

	(set (reg:SI $f0) (mem:SI ...))
	(set (reg:SI $f1) (mem:SI ...))

   However, the second insn is invalid because odd-numbered FPRs are
   not allowed to store independent values.  Use the patterns load_df_low,
   load_df_high and store_df_high instead.  */

void
mips_split_64bit_move (rtx dest, rtx src)
{
  //#if 0
  if (FP_REG_RTX_P (dest))
    {
      /* Loading an FPR from memory or from GPRs.  */
      emit_insn (gen_load_df_low (copy_rtx (dest), mips_subword (src, 0)));
      emit_insn (gen_load_df_high (dest, mips_subword (src, 1),
				   copy_rtx (dest)));
    }
  else if (FP_REG_RTX_P (src))
    {
      /* Storing an FPR into memory or GPRs.  */
      emit_move_insn (mips_subword (dest, 0), mips_subword (src, 0));
      emit_insn (gen_store_df_high (mips_subword (dest, 1), src));
    }
  else
    {
      //#endif
      /* The operation can be split into two normal moves.  Decide in
	 which order to do them.  */
      rtx low_dest;

      low_dest = mips_subword (dest, 0);
      if (REG_P (low_dest)
	  && reg_overlap_mentioned_p (low_dest, src))
	{
	  emit_move_insn (mips_subword (dest, 1), mips_subword (src, 1));
	  emit_move_insn (low_dest, mips_subword (src, 0));
	}
      else
	{
	  emit_move_insn (low_dest, mips_subword (src, 0));
	  emit_move_insn (mips_subword (dest, 1), mips_subword (src, 1));
	}
      //#if 0
    }
  //#endif
}
#endif /* 000 */


/* Return the appropriate instructions to move SRC into DEST.  Assume
   that SRC is operand 1 and DEST is operand 0.  */
#if 0
const char *
mips_output_move (rtx dest, rtx src)
{
  enum rtx_code dest_code, src_code;
  bool dbl_p;

  dest_code = GET_CODE (dest);
  src_code = GET_CODE (src);
  dbl_p = (GET_MODE_SIZE (GET_MODE (dest)) == 8);

  if (dbl_p && mips_split_64bit_move_p (dest, src))
    return "#";

  if ((src_code == REG && GP_REG_P (REGNO (src)))
      || (!TARGET_MIPS16 && src == CONST0_RTX (GET_MODE (dest))))
    {
      if (dest_code == REG)
	{
	  if (GP_REG_P (REGNO (dest)))
	    return "move\t%0,%z1";

	  if (MD_REG_P (REGNO (dest)))
	    return "mt%0\t%z1";

	  if (FP_REG_P (REGNO (dest)))
	    return (dbl_p ? "dmtc1\t%z1,%0" : "mtc1\t%z1,%0");

	  if (ALL_COP_REG_P (REGNO (dest)))
	    {
	      static char retval[] = "dmtc_\t%z1,%0";

	      retval[4] = COPNUM_AS_CHAR_FROM_REGNUM (REGNO (dest));
	      return (dbl_p ? retval : retval + 1);
	    }
	}
      if (dest_code == MEM)
	return (dbl_p ? "sd\t%z1,%0" : "sw\t%z1,%0");
    }
  if (dest_code == REG && GP_REG_P (REGNO (dest)))
    {
      if (src_code == REG)
	{
	  if (ST_REG_P (REGNO (src)) && ISA_HAS_8CC)
	    return "lui\t%0,0x3f80\n\tmovf\t%0,%.,%1";

	  if (FP_REG_P (REGNO (src)))
	    return (dbl_p ? "dmfc1\t%0,%1" : "mfc1\t%0,%1");

	  if (ALL_COP_REG_P (REGNO (src)))
	    {
	      static char retval[] = "dmfc_\t%0,%1";

	      retval[4] = COPNUM_AS_CHAR_FROM_REGNUM (REGNO (src));
	      return (dbl_p ? retval : retval + 1);
	    }
	}

      if (src_code == MEM)
	return (dbl_p ? "ld\t%0,%1" : "lw\t%0,%1");

      if (src_code == CONST_INT)
	{
	  /* Don't use the X format, because that will give out of
	     range numbers for 64 bit hosts and 32 bit targets.  */
	  if (!TARGET_MIPS16)
	    return "li\t%0,%1\t\t\t# %X1";

	  if (INTVAL (src) >= 0 && INTVAL (src) <= 0xffff)
	    return "li\t%0,%1";

	  if (INTVAL (src) < 0 && INTVAL (src) >= -0xffff)
	    return "#";
	}

      if (src_code == HIGH)
	return "lui\t%0,%h1";

      if (CONST_GP_P (src))
	return "move\t%0,%1";

      if (symbolic_operand (src, VOIDmode))
	return (dbl_p ? "dla\t%0,%1" : "la\t%0,%1");
    }
  if (src_code == REG && FP_REG_P (REGNO (src)))
    {
      if (dest_code == REG && FP_REG_P (REGNO (dest)))
	{
	  if (GET_MODE (dest) == V2SFmode)
	    return "mov.ps\t%0,%1";
	  else
	    return (dbl_p ? "mov.d\t%0,%1" : "mov.s\t%0,%1");
	}

      if (dest_code == MEM)
	return (dbl_p ? "sdc1\t%1,%0" : "swc1\t%1,%0");
    }
  if (dest_code == REG && FP_REG_P (REGNO (dest)))
    {
      if (src_code == MEM)
	return (dbl_p ? "ldc1\t%0,%1" : "lwc1\t%0,%1");
    }
  if (dest_code == REG && ALL_COP_REG_P (REGNO (dest)) && src_code == MEM)
    {
      static char retval[] = "l_c_\t%0,%1";

      retval[1] = (dbl_p ? 'd' : 'w');
      retval[3] = COPNUM_AS_CHAR_FROM_REGNUM (REGNO (dest));
      return retval;
    }
  if (dest_code == MEM && src_code == REG && ALL_COP_REG_P (REGNO (src)))
    {
      static char retval[] = "s_c_\t%1,%0";

      retval[1] = (dbl_p ? 'd' : 'w');
      retval[3] = COPNUM_AS_CHAR_FROM_REGNUM (REGNO (src));
      return retval;
    }
  gcc_unreachable ();
}

#endif

/* Return the best assembler insn template
   for moving operands[1] into operands[0] as a fullword.  */
static const char *
lw_string (rtx *operands)
{
  return "LW      %0,%1";
}
static const char *
sw_string (rtx *operands)
{
  return "SW      %0,%1";
}
static const char *
mov_string (rtx *operands)
{
  return "ADD      %0,r0,%1";
}

static const char *
off1_string (rtx *operands)
{
  return "Lw      %2,%1";
}
static const char *
off2_string (rtx *operands)
{
  return "Sw      %0,%2";
}

/* Output assembler code to perform a doubleword move insn
   with operands OPERANDS.  */
#if 1
const char *
output_move_double (rtx *operands)
{
  enum
    {
      REGOP, OFFSOP, MEMOP ,ERROP,XXXXOP
    } optype0, optype1,optype2;

  rtx latehalf[3];
  int size = GET_MODE_SIZE (GET_MODE (operands[0]));

  enum rtx_code code0 = GET_CODE (operands[0]);
  enum rtx_code code1 = GET_CODE (operands[1]);
  enum rtx_code code2 = GET_CODE (operands[2]);
printf("code0=%d code1=%d code2=%d \n",code0,code1,code2);
printf("REG=%d MEM=%d CODE_LABEL=%d \n",REG,MEM,CODE_LABEL);

  if (REG_P (operands[0]))
  {
    optype0 = REGOP;
  }
  else if (MEM_P (operands[0]))
  {
    optype0 = MEMOP;
  }
  else if (offsettable_nonstrict_memref_p (operands[0]))
  {
	optype0 = XXXXOP;
  }
  else
  {
    abort_with_insn (*operands, "### operands0 PRINT_OPERAND, Can't double inst pat.");
  }

  if (REG_P (operands[1]))
    optype1 = REGOP;
  else if (MEM_P (operands[1]))
    optype1 = MEMOP;
  else
  {
    abort_with_insn (*operands, "### operands1 PRINT_OPERAND, Can't double inst pat.");
  }
printf("optype0=%d optype1=%d\n",optype0,optype1);
  if (optype0 == REGOP)
	latehalf[0] = gen_rtx_REG (SImode, REGNO (operands[0]) + 1);
  else if (optype0 == MEMOP)
	latehalf[0] = adjust_address (operands[0], SImode, size - 4);
  else
	latehalf[0] = adjust_address (operands[0], SImode, size - 4);
  
  if (optype1 == REGOP)
	latehalf[1] = gen_rtx_REG (SImode, REGNO (operands[1]) + 1);
  else if (optype1 == MEMOP)
	latehalf[1] = adjust_address (operands[1], SImode, size - 4);
  else
	latehalf[1] = adjust_address (operands[1], SImode, size - 4);

	latehalf[2] = gen_rtx_REG (SImode, REGNO (operands[2]));

  if( (optype0 == REGOP)&&(optype1 == MEMOP) )
  {
    output_asm_insn (lw_string (operands), operands);
    output_asm_insn (lw_string (latehalf), latehalf);
    output_asm_insn ("nop",latehalf);
  }
  else if( (optype1 == REGOP)&&(optype0 == MEMOP) )
  {
    output_asm_insn (sw_string (operands), operands);
    output_asm_insn (sw_string (latehalf), latehalf);
  }
  else if( (optype0 == REGOP)&&(optype1 == REGOP) )
  {
    output_asm_insn (mov_string (operands), operands);
    output_asm_insn (mov_string (latehalf), latehalf);
  }
  else if( (optype0 == MEMOP)&&(optype1 == MEMOP) )
  {
    output_asm_insn (off1_string (operands), operands);    
    output_asm_insn (off2_string (operands), operands);
    output_asm_insn (off1_string (latehalf), latehalf);
    output_asm_insn (off2_string (latehalf), latehalf);
  }
  else
  {
    output_asm_insn ("NoP",latehalf);
  }
  return "";
}
#else
const char *
output_move_double (rtx *operands)
{
  enum
    {
      REGOP, OFFSOP, MEMOP ,ERROP,XXXXOP
    } optype0, optype1,optype2;

  rtx latehalf[3];
  int size = GET_MODE_SIZE (GET_MODE (operands[0]));

  enum rtx_code code0 = GET_CODE (operands[0]);
  enum rtx_code code1 = GET_CODE (operands[1]);
  enum rtx_code code2 = GET_CODE (operands[2]);
printf("code0=%d code1=%d code2=%d \n",code0,code1,code2);
printf("REG=%d MEM=%d CODE_LABEL=%d \n",REG,MEM,CODE_LABEL);

  if (REG_P (operands[0]))
  {
    optype0 = REGOP;
  }
  else if (offsettable_memref_p (operands[0]))
  {
    optype0 = OFFSOP;
  }
  else if (offsettable_nonstrict_memref_p (operands[0]))
  {
	optype0 = XXXXOP;
  }
  else if (MEM_P (operands[0]))
  {
	optype0 = MEMOP;
  }
  else
  {
    abort_with_insn (*operands, "### operands0 PRINT_OPERAND, Can't double inst pat.");
  }

  if (REG_P (operands[1]))
    optype1 = REGOP;
  else if (offsettable_memref_p (operands[1]))
    optype1 = OFFSOP;
  else if (MEM_P (operands[1]))
    optype1 = MEMOP;
  else
  {
    abort_with_insn (*operands, "### operands1 PRINT_OPERAND, Can't double inst pat.");
  }
printf("optype0=%d optype1=%d\n",optype0,optype1);
  if (optype0 == REGOP)
	latehalf[0] = gen_rtx_REG (SImode, REGNO (operands[0]) + 1);
  else if (optype0 == OFFSOP)
	latehalf[0] = adjust_address (operands[0], SImode, size - 4);
  else
	latehalf[0] = adjust_address (operands[0], SImode, size - 4);
  
  if (optype1 == REGOP)
	latehalf[1] = gen_rtx_REG (SImode, REGNO (operands[1]) + 1);
  else if (optype1 == OFFSOP)
	latehalf[1] = adjust_address (operands[1], SImode, size - 4);
  else
	latehalf[1] = adjust_address (operands[1], SImode, size - 4);

	latehalf[2] = gen_rtx_REG (SImode, REGNO (operands[2]));

  if( (optype0 == REGOP)&&(optype1 == OFFSOP) )
  {
    output_asm_insn (lw_string (operands), operands);
    output_asm_insn (lw_string (latehalf), latehalf);
    output_asm_insn ("nop",latehalf);
  }
  else if( (optype1 == REGOP)&&(optype0 == OFFSOP) )
  {
    output_asm_insn (sw_string (operands), operands);
    output_asm_insn (sw_string (latehalf), latehalf);
  }
  else if( (optype0 == REGOP)&&(optype1 == REGOP) )
  {
    output_asm_insn (mov_string (operands), operands);
    output_asm_insn (mov_string (latehalf), latehalf);
  }
  else if( (optype0 == OFFSOP)&&(optype1 == OFFSOP) )
  {
    output_asm_insn (off1_string (operands), operands);    
    output_asm_insn (off2_string (operands), operands);
    output_asm_insn (off1_string (latehalf), latehalf);
    output_asm_insn (off2_string (latehalf), latehalf);
  }
  else if( (optype0 == MEMOP )&&(optype1 == OFFSOP) )
  {
add %2,r0,
  }
  else
  {
    output_asm_insn ("NoP",latehalf);
  }
  return "";
}
#endif
//--------------- Double move exe C.katano 070621 <--

/* Worker function for TARGET_SETUP_INCOMING_VARARGS.  */

static void
brownie32_setup_incoming_varargs (CUMULATIVE_ARGS *ca,
			     enum machine_mode mode ATTRIBUTE_UNUSED,
			     tree type ATTRIBUTE_UNUSED,
			     int *pretend_arg_size ATTRIBUTE_UNUSED,
			     int second_time ATTRIBUTE_UNUSED)
{
  ca->anonymous_args = 1;
}


/* Try machine-dependent ways of modifying an illegitimate address
   to be legitimate.  If we find one, return the new, valid address.  */
/*
*(sym+off32) ->

old --
 addhi ra,, %hi(sym+off32)
 lso ra,,%lo(sym+off32)
 sw (ra)

new --
 addhi rb, %hi(off32)    # max is 0xfff7, why?
 add ra,ra,rb
 sw %lo(off32)(ra),..
*/

rtx
brownie32_legitimize_address (rtx x, rtx scratch,
			  enum machine_mode mode ATTRIBUTE_UNUSED)
{
  HOST_WIDE_INT addend;

  /* If the address is (plus reg const_int) and the CONST_INT is not a
     valid offset, compute the high part of the constant and add it to
     the register.  Then our address is (plus temp low-part-const).  */
  if (GET_CODE (x) == PLUS
      && GET_CODE (XEXP (x, 0)) == REG
      && GET_CODE (XEXP (x, 1)) == CONST_INT
      && ! CONSTANT_ADDRESS_P (XEXP (x, 1)))
    {
      addend = INTVAL (XEXP (x, 1));
      x = XEXP (x, 0);
      goto split_addend;
    }

  /* If the address is (const (plus symbol const_int)), find the low-order
     part of the CONST_INT.  Then load FOO plus any high-order part of the
     CONST_INT into a register.  Our address is (plus reg low-part-const).
     This is done to reduce the number of GOT entries.  */
  if (!no_new_pseudos
      && GET_CODE (x) == CONST
      && GET_CODE (XEXP (x, 0)) == PLUS
      && GET_CODE (XEXP (XEXP (x, 0), 1)) == CONST_INT)
    {
      addend = INTVAL (XEXP (XEXP (x, 0), 1));
      x = force_reg (Pmode, XEXP (XEXP (x, 0), 0));
      goto split_addend;
    }
  return NULL;

 split_addend:
  {
    HOST_WIDE_INT low, high;

#if 0
    low = ((addend & 0xffff) ^ 0x8000) - 0x8000;
    addend -= low;
    high = ((addend & 0xffffffff) ^ 0x80000000) - 0x80000000;
    addend -= high;
#endif
    low = ((addend & 0xffff) ^ 0x8000) - 0x8000 + 16; /* [, 0xfff7]-- ok for high */
    addend -= low;
    high = ((addend & 0xffffffff) ^ 0x80000000) - 0x80000000;
    addend -= high;



    if (addend)
      x = expand_simple_binop (Pmode, PLUS, x, GEN_INT (addend),
			       (no_new_pseudos ? scratch : NULL_RTX),
			       1, OPTAB_LIB_WIDEN);
    if (high)
      x = expand_simple_binop (Pmode, PLUS, x, GEN_INT (high),
			       (no_new_pseudos ? scratch : NULL_RTX),
			       1, OPTAB_LIB_WIDEN);

    return plus_constant (x, low);
  }
}


/* Fix up any incompatible options that the user has specified.
   This has now turned into a maze.  */
/*  need peephole optimize when -O1 and more for nomalize to use lt or ltu.  */

void
brownie32_override_options (void)
{
  if (optimize)
    flag_peephole2 = 1;
}

static void
brownie32_init_builtins (void)
{
tree ftype_MMAX = build_function_type_list (void_type_node, integer_type_node, integer_type_node, integer_type_node, integer_type_node, NULL_TREE);
tree ftype_lstep = build_function_type_list (integer_type_node, integer_type_node, NULL_TREE);
tree ftype_addidx = build_function_type_list (void_type_node, integer_type_node, integer_type_node, integer_type_node, NULL_TREE);
tree ftype_clmp = build_function_type_list (void_type_node, integer_type_node, integer_type_node, integer_type_node, integer_type_node, NULL_TREE);
tree ftype_pcmdec = build_function_type_list (void_type_node, integer_type_node, integer_type_node, integer_type_node, integer_type_node, NULL_TREE);
tree ftype_MMAXS = build_function_type_list (void_type_node, integer_type_node, integer_type_node, integer_type_node, integer_type_node, NULL_TREE);

builtin_function ("__builtin_brownie32_MMAX", ftype_MMAX, CODE_FOR_builtin_brownie32_MMAX, BUILT_IN_MD, NULL, NULL_TREE);
builtin_function ("__builtin_brownie32_lstep", ftype_lstep, CODE_FOR_builtin_brownie32_lstep, BUILT_IN_MD, NULL, NULL_TREE);
builtin_function ("__builtin_brownie32_addidx", ftype_addidx, CODE_FOR_builtin_brownie32_addidx, BUILT_IN_MD, NULL, NULL_TREE);
builtin_function ("__builtin_brownie32_clmp", ftype_clmp, CODE_FOR_builtin_brownie32_clmp, BUILT_IN_MD, NULL, NULL_TREE);
builtin_function ("__builtin_brownie32_pcmdec", ftype_pcmdec, CODE_FOR_builtin_brownie32_pcmdec, BUILT_IN_MD, NULL, NULL_TREE);
builtin_function ("__builtin_brownie32_MMAXS", ftype_MMAXS, CODE_FOR_builtin_brownie32_MMAXS, BUILT_IN_MD, NULL, NULL_TREE);

}

static rtx brownie32_expand_builtin (
  tree exp,
  rtx target,
  rtx subtarget  ATTRIBUTE_UNUSED,
  enum machine_mode mode  ATTRIBUTE_UNUSED,
  int ignore  ATTRIBUTE_UNUSED )
{
  tree fndecl = TREE_OPERAND (TREE_OPERAND (exp, 0), 0);
  tree arglist = TREE_OPERAND (exp, 1);
  enum insn_code icode = DECL_FUNCTION_CODE (fndecl);
  const int max_args = 9;
  rtx op_orig[9];
  rtx op[9];
  rtx pat;
  int argcount;
  bool nonvoid;
  rtx emitted_insn;

  nonvoid = (TREE_TYPE (TREE_TYPE (fndecl)) != void_type_node);

  for (arglist = TREE_OPERAND (exp, 1), argcount = 0 ;
       arglist ;
       arglist = TREE_CHAIN (arglist), argcount++ )
  {
    const struct insn_operand_data *insn_op;
    tree arg = TREE_VALUE (arglist);

    if ( arg == error_mark_node
        || max_args <= argcount)
      return NULL_RTX;

    insn_op = &insn_data[icode].operand[argcount + nonvoid];
    op_orig[argcount] = expand_expr (arg, NULL_RTX, VOIDmode, 0);
    op[argcount] = op_orig[argcount];

    if (!(*insn_op->predicate) (op_orig[argcount], insn_op->mode))
      op[argcount] = copy_to_mode_reg (insn_op->mode, op_orig[argcount]);
  }
  
  if (nonvoid)
  {
    /* Builtin function has a return value. */
    enum machine_mode tmode = insn_data[icode].operand[0].mode;

    if (!target
        || GET_MODE (target) != tmode
        || !(*insn_data[icode].operand[0].predicate) (target, tmode))
    {
      target = gen_reg_rtx (tmode);
    }
  }

  switch (argcount)
  {
    case 0:
      pat = GEN_FCN (icode) (target);
      break;
    case 1:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0]);
      else
        pat = GEN_FCN (icode) (op[0]);
      break;
    case 2:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1]);
      else
        pat = GEN_FCN (icode) (op[0], op[1]);
      break;
    case 3:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2]);
      break;
    case 4:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2], op[3]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2], op[3]);
      break;
    case 5:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2], op[3], op[4]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2], op[3], op[4]);
      break;
    case 6:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2], op[3], op[4], op[5]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2], op[3], op[4], op[5]);
      break;
    case 7:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2], op[3], op[4], op[5], op[6]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2], op[3], op[4], op[5], op[6]);
      break;
    case 8:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2], op[3], op[4], op[5], op[6], op[7]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2], op[3], op[4], op[5], op[6], op[7]);
      break;
    case 9:
      if (nonvoid)
        pat = GEN_FCN (icode) (target, op[0], op[1], op[2], op[3], op[4], op[5], op[6], op[7], op[8]);
      else
        pat = GEN_FCN (icode) (op[0], op[1], op[2], op[3], op[4], op[5], op[6], op[7], op[8]);
      break;
    default:
      /* We don't support builtin functions having 10 arguments or more. */
      abort ();
  }

  if (!pat)
    return NULL_RTX;

  emitted_insn = emit_insn (pat);

  if (!nonvoid && emitted_insn && multiple_sets (emitted_insn))
  {
    /* Instructions corresponding to void-type built-in functions may
     * modify several registers. In that case, we want to make sure
     * that the modified registers are stored back to somewhere in the
     * stack frame. */
    int i;
    for ( i=0 ; i<argcount ; i++ )
    {
      if (! reg_set_p(op[i], emitted_insn))
        continue;

      if (GET_CODE (op_orig[i]) == MEM
          && REG_P (op[i]))
        /* Emit a store instruction. */
        emit_move_insn (op_orig[i], op[i]);
    }
  }

  if (nonvoid)
    return target;
  else
    return const0_rtx;
}

#define IS_N_BIT_SIGNED_IMMEDIATE32(VALUE,N) \
  (((uint32_t)(VALUE) + (((uint32_t)1)<<((N)-1))) < (((uint32_t)1) << (N)))
#define IS_N_BIT_SIGNED_IMMEDIATE64(VALUE,N) \
  (((uint64_t)(VALUE) + (((uint64_t)1)<<((N)-1))) < (((uint64_t)1) << (N)))
#define IS_N_BIT_UNSIGNED_IMMEDIATE32(VALUE,N) \
  (((uint32_t)(VALUE)) < (((uint32_t)1) << (N)))
#define IS_N_BIT_UNSIGNED_IMMEDIATE64(VALUE,N) \
  (((uint64_t)(VALUE)) < (((uint64_t)1) << (N)))
int
brownie32_signed_immediate_1 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),1));
}
int
brownie32_unsigned_immediate_1 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),1));
}
int
brownie32_signed_immediate_2 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),2));
}
int
brownie32_unsigned_immediate_2 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),2));
}
int
brownie32_signed_immediate_3 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),3));
}
int
brownie32_unsigned_immediate_3 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),3));
}
int
brownie32_signed_immediate_4 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),4));
}
int
brownie32_unsigned_immediate_4 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),4));
}
int
brownie32_signed_immediate_5 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),5));
}
int
brownie32_unsigned_immediate_5 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),5));
}
int
brownie32_signed_immediate_6 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),6));
}
int
brownie32_unsigned_immediate_6 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),6));
}
int
brownie32_signed_immediate_7 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),7));
}
int
brownie32_unsigned_immediate_7 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),7));
}
int
brownie32_signed_immediate_8 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),8));
}
int
brownie32_unsigned_immediate_8 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),8));
}
int
brownie32_signed_immediate_9 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),9));
}
int
brownie32_unsigned_immediate_9 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),9));
}
int
brownie32_signed_immediate_10 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),10));
}
int
brownie32_unsigned_immediate_10 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),10));
}
int
brownie32_signed_immediate_11 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),11));
}
int
brownie32_unsigned_immediate_11 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),11));
}
int
brownie32_signed_immediate_12 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),12));
}
int
brownie32_unsigned_immediate_12 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),12));
}
int
brownie32_signed_immediate_13 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),13));
}
int
brownie32_unsigned_immediate_13 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),13));
}
int
brownie32_signed_immediate_14 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),14));
}
int
brownie32_unsigned_immediate_14 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),14));
}
int
brownie32_signed_immediate_15 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),15));
}
int
brownie32_unsigned_immediate_15 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),15));
}
int
brownie32_signed_immediate_16 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),16));
}
int
brownie32_unsigned_immediate_16 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),16));
}
int
brownie32_signed_immediate_17 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),17));
}
int
brownie32_unsigned_immediate_17 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),17));
}
int
brownie32_signed_immediate_18 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),18));
}
int
brownie32_unsigned_immediate_18 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),18));
}
int
brownie32_signed_immediate_19 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),19));
}
int
brownie32_unsigned_immediate_19 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),19));
}
int
brownie32_signed_immediate_20 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),20));
}
int
brownie32_unsigned_immediate_20 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),20));
}
int
brownie32_signed_immediate_21 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),21));
}
int
brownie32_unsigned_immediate_21 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),21));
}
int
brownie32_signed_immediate_22 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),22));
}
int
brownie32_unsigned_immediate_22 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),22));
}
int
brownie32_signed_immediate_23 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),23));
}
int
brownie32_unsigned_immediate_23 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),23));
}
int
brownie32_signed_immediate_24 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),24));
}
int
brownie32_unsigned_immediate_24 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),24));
}
int
brownie32_signed_immediate_25 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),25));
}
int
brownie32_unsigned_immediate_25 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),25));
}
int
brownie32_signed_immediate_26 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),26));
}
int
brownie32_unsigned_immediate_26 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),26));
}
int
brownie32_signed_immediate_27 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),27));
}
int
brownie32_unsigned_immediate_27 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),27));
}
int
brownie32_signed_immediate_28 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),28));
}
int
brownie32_unsigned_immediate_28 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),28));
}
int
brownie32_signed_immediate_29 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),29));
}
int
brownie32_unsigned_immediate_29 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),29));
}
int
brownie32_signed_immediate_30 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),30));
}
int
brownie32_unsigned_immediate_30 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),30));
}
int
brownie32_signed_immediate_31 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE32 (INTVAL (op),31));
}
int
brownie32_unsigned_immediate_31 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE32 (INTVAL (op),31));
}
int
brownie32_signed_immediate_32 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),32));
}
int
brownie32_unsigned_immediate_32 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),32));
}
int
brownie32_signed_immediate_33 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),33));
}
int
brownie32_unsigned_immediate_33 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),33));
}
int
brownie32_signed_immediate_34 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),34));
}
int
brownie32_unsigned_immediate_34 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),34));
}
int
brownie32_signed_immediate_35 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),35));
}
int
brownie32_unsigned_immediate_35 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),35));
}
int
brownie32_signed_immediate_36 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),36));
}
int
brownie32_unsigned_immediate_36 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),36));
}
int
brownie32_signed_immediate_37 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),37));
}
int
brownie32_unsigned_immediate_37 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),37));
}
int
brownie32_signed_immediate_38 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),38));
}
int
brownie32_unsigned_immediate_38 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),38));
}
int
brownie32_signed_immediate_39 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),39));
}
int
brownie32_unsigned_immediate_39 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),39));
}
int
brownie32_signed_immediate_40 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),40));
}
int
brownie32_unsigned_immediate_40 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),40));
}
int
brownie32_signed_immediate_41 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),41));
}
int
brownie32_unsigned_immediate_41 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),41));
}
int
brownie32_signed_immediate_42 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),42));
}
int
brownie32_unsigned_immediate_42 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),42));
}
int
brownie32_signed_immediate_43 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),43));
}
int
brownie32_unsigned_immediate_43 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),43));
}
int
brownie32_signed_immediate_44 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),44));
}
int
brownie32_unsigned_immediate_44 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),44));
}
int
brownie32_signed_immediate_45 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),45));
}
int
brownie32_unsigned_immediate_45 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),45));
}
int
brownie32_signed_immediate_46 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),46));
}
int
brownie32_unsigned_immediate_46 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),46));
}
int
brownie32_signed_immediate_47 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),47));
}
int
brownie32_unsigned_immediate_47 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),47));
}
int
brownie32_signed_immediate_48 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),48));
}
int
brownie32_unsigned_immediate_48 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),48));
}
int
brownie32_signed_immediate_49 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),49));
}
int
brownie32_unsigned_immediate_49 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),49));
}
int
brownie32_signed_immediate_50 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),50));
}
int
brownie32_unsigned_immediate_50 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),50));
}
int
brownie32_signed_immediate_51 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),51));
}
int
brownie32_unsigned_immediate_51 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),51));
}
int
brownie32_signed_immediate_52 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),52));
}
int
brownie32_unsigned_immediate_52 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),52));
}
int
brownie32_signed_immediate_53 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),53));
}
int
brownie32_unsigned_immediate_53 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),53));
}
int
brownie32_signed_immediate_54 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),54));
}
int
brownie32_unsigned_immediate_54 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),54));
}
int
brownie32_signed_immediate_55 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),55));
}
int
brownie32_unsigned_immediate_55 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),55));
}
int
brownie32_signed_immediate_56 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),56));
}
int
brownie32_unsigned_immediate_56 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),56));
}
int
brownie32_signed_immediate_57 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),57));
}
int
brownie32_unsigned_immediate_57 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),57));
}
int
brownie32_signed_immediate_58 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),58));
}
int
brownie32_unsigned_immediate_58 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),58));
}
int
brownie32_signed_immediate_59 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),59));
}
int
brownie32_unsigned_immediate_59 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),59));
}
int
brownie32_signed_immediate_60 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),60));
}
int
brownie32_unsigned_immediate_60 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),60));
}
int
brownie32_signed_immediate_61 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),61));
}
int
brownie32_unsigned_immediate_61 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),61));
}
int
brownie32_signed_immediate_62 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),62));
}
int
brownie32_unsigned_immediate_62 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),62));
}
int
brownie32_signed_immediate_63 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_SIGNED_IMMEDIATE64 (INTVAL (op),63));
}
int
brownie32_unsigned_immediate_63 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == CONST_INT)
          && IS_N_BIT_UNSIGNED_IMMEDIATE64 (INTVAL (op),63));
}


int
brownie32_gr_regs_operand (rtx op, enum machine_mode mode)
{
  if (!op)
    return 0;
  if (REG_P (op) && reg_renumber)
  {
    int regno = REGNO (op);
    int regno_renum = reg_renumber[regno];
    if (0 <= regno_renum)
      return TEST_HARD_REG_BIT (reg_class_contents[(int)GR_REGS], regno_renum);
    else if (FIRST_PSEUDO_REGISTER <= regno)
      return 1;
    else
      return 0;
  }
  else
  {
    return register_operand (op, mode);
  }
}

