* Signature: 0x2b3c2f32d9f8b44a
NAME nohadani_2_15
ROWS
 N  OBJ
 E  flow_cons_source
 E  flow_cons_target
 L  primal_lower
 L  mccormick1[0,1]
 L  mccormick1[1,0]
 L  mccormick2[0,1]
 L  mccormick2[1,0]
 G  mccormick3[0,1]
 G  mccormick3[1,0]
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]    OBJ       32.0624390837628
    y[0,1]    flow_cons_source  1
    y[0,1]    flow_cons_target  1
    y[0,1]    mccormick2[0,1]  -1
    y[0,1]    mccormick3[0,1]  -1
    y[1,0]    OBJ       32.0624390837628
    y[1,0]    flow_cons_source  -1
    y[1,0]    flow_cons_target  -1
    y[1,0]    mccormick2[1,0]  -1
    y[1,0]    mccormick3[1,0]  -1
    x[0,1]    OBJ       1
    x[0,1]    primal_lower  6.5173260253914060e+00
    x[1,0]    OBJ       1
    x[1,0]    primal_lower  2.8852230054958625e+01
    u[0,1]    primal_lower  55
    u[0,1]    mccormick1[0,1]  -1
    u[0,1]    mccormick3[0,1]  -1
    u[1,0]    primal_lower  68
    u[1,0]    mccormick1[1,0]  -1
    u[1,0]    mccormick3[1,0]  -1
    r[0,1]    OBJ       3.2062439083762797e+00
    r[0,1]    mccormick1[0,1]  1
    r[0,1]    mccormick2[0,1]  1
    r[0,1]    mccormick3[0,1]  1
    r[1,0]    OBJ       3.2062439083762797e+00
    r[1,0]    mccormick1[1,0]  1
    r[1,0]    mccormick2[1,0]  1
    r[1,0]    mccormick3[1,0]  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      flow_cons_source  1
    RHS1      flow_cons_target  1
    RHS1      primal_lower  68
    RHS1      mccormick3[0,1]  -1
    RHS1      mccormick3[1,0]  -1
BOUNDS
 BV BND1      y[0,1]  
 BV BND1      y[1,0]  
 BV BND1      x[0,1]  
 BV BND1      x[1,0]  
 BV BND1      u[0,1]  
 BV BND1      u[1,0]  
 BV BND1      r[0,1]  
 BV BND1      r[1,0]  
ENDATA
