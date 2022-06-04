  "nop" {
    type{"MY_NOP"{otype{"MY_NOP0"}}},
    "OP-code" {"binary"{"00000000000000000000000000000000"},width{"31","0"}}
  },
  "clamp" {
    type{"R_R"{otype{"R_R0"}}},
    "OP-code" {"binary"{"000000"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rd"},width{"15","11"}},
    "OP-code" {"binary"{"00001000000"},width{"10","0"}}
  },
  "delt" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"111111"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000000"},width{"5","0"}}
  },
  "sign" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"111110"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000000"},width{"5","0"}}
  },
