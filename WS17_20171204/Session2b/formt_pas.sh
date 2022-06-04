#!/bin/bash

#sed -e 's/R1/%GPR1/g;s/R2/%GPR2/g;s/R3/%GPR3/g;s/R4/%GPR4/g;s/R5/%GPR5/g;s/R6/%GPR6/g;s/R7/%GPR7/g;s/R8/%GPR8/g;s/R9/%GPR9/g;s/R10/%GPR10/g;s/R11/%GPR11/g;s/R12/%GPR12/g;s/R13/%GPR13/g;s/R14/%GPR14/g;s/R15/%GPR15/g;s/R16/%GPR16/g;s/R17/%GPR17/g;s/R18/%GPR18/g;s/R19/%GPR19/g;s/R20/%GPR20/g;s/R21/%GPR21/g;s/R22/%GPR22/g;s/R23/%GPR23/g;s/R24/%GPR24/g;s/R25/%GPR25/g;s/R26/%GPR26/g;s/R27/%GPR27/g;s/R28/%GPR28/g;s/R29/%GPR29/g;s/R30/%GPR30/g;s/R31/%GPR31/g;s/R0/%GPR0/g' tmp.s > tmp.sa
sed -e 's/\bR/%GPR/g;s/(R/(%GPR/g' tmp.s > tmp.sa
sed -e '/.section\t.text/{' -e 'r startup_vsim.s' -e  'd' -e '}' tmp.sa > tmp.sb
sed -e '/.section\t.data/{' -e 'r end_vsim.s' -e  'd' -e '}' tmp.sb > tmp.sc
sed 's/.addressing\tWord/ /g' tmp.sc > tmp.sd
gawk --posix -f lable.awk tmp.sd > tmp.se