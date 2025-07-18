* Signature: 0xf9a0f44b955b8bcb
NAME nohadani_3_20
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[2]
 E  flow_cons_source
 E  flow_cons_target
 L  primal_lower
 L  mccormick1[0,1]
 L  mccormick1[0,2]
 L  mccormick1[1,0]
 L  mccormick1[1,2]
 L  mccormick1[2,0]
 L  mccormick1[2,1]
 L  mccormick2[0,1]
 L  mccormick2[0,2]
 L  mccormick2[1,0]
 L  mccormick2[1,2]
 L  mccormick2[2,0]
 L  mccormick2[2,1]
 G  mccormick3[0,1]
 G  mccormick3[0,2]
 G  mccormick3[1,0]
 G  mccormick3[1,2]
 G  mccormick3[2,0]
 G  mccormick3[2,1]
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]    OBJ       65.49
    y[0,1]    flow_cons_source  1
    y[0,1]    flow_cons_target  1
    y[0,1]    mccormick2[0,1]  -1
    y[0,1]    mccormick3[0,1]  -1
    y[0,2]    OBJ       22.02
    y[0,2]    flow_cons_inner_nodes[2]  1
    y[0,2]    flow_cons_source  1
    y[0,2]    mccormick2[0,2]  -1
    y[0,2]    mccormick3[0,2]  -1
    y[1,0]    OBJ       65.49
    y[1,0]    flow_cons_source  -1
    y[1,0]    flow_cons_target  -1
    y[1,0]    mccormick2[1,0]  -1
    y[1,0]    mccormick3[1,0]  -1
    y[1,2]    OBJ       51.79
    y[1,2]    flow_cons_inner_nodes[2]  1
    y[1,2]    flow_cons_target  -1
    y[1,2]    mccormick2[1,2]  -1
    y[1,2]    mccormick3[1,2]  -1
    y[2,0]    OBJ       22.02
    y[2,0]    flow_cons_inner_nodes[2]  -1
    y[2,0]    flow_cons_source  -1
    y[2,0]    mccormick2[2,0]  -1
    y[2,0]    mccormick3[2,0]  -1
    y[2,1]    OBJ       51.79
    y[2,1]    flow_cons_inner_nodes[2]  -1
    y[2,1]    flow_cons_target  1
    y[2,1]    mccormick2[2,1]  -1
    y[2,1]    mccormick3[2,1]  -1
    x[0,1]    OBJ       1
    x[0,1]    primal_lower  0.43
    x[0,2]    OBJ       1
    x[0,2]    primal_lower  6.28
    x[1,0]    OBJ       1
    x[1,0]    primal_lower  10.86
    x[1,2]    OBJ       1
    x[1,2]    primal_lower  5.28
    x[2,0]    OBJ       1
    x[2,0]    primal_lower  8.1
    x[2,1]    OBJ       1
    x[2,1]    primal_lower  3.73
    u[0,1]    primal_lower  10
    u[0,1]    mccormick1[0,1]  -1
    u[0,1]    mccormick3[0,1]  -1
    u[0,2]    primal_lower  62
    u[0,2]    mccormick1[0,2]  -1
    u[0,2]    mccormick3[0,2]  -1
    u[1,0]    primal_lower  36
    u[1,0]    mccormick1[1,0]  -1
    u[1,0]    mccormick3[1,0]  -1
    u[1,2]    primal_lower  77
    u[1,2]    mccormick1[1,2]  -1
    u[1,2]    mccormick3[1,2]  -1
    u[2,0]    primal_lower  50
    u[2,0]    mccormick1[2,0]  -1
    u[2,0]    mccormick3[2,0]  -1
    u[2,1]    primal_lower  56
    u[2,1]    mccormick1[2,1]  -1
    u[2,1]    mccormick3[2,1]  -1
    r[0,1]    OBJ       6.5489999999999995e+00
    r[0,1]    mccormick1[0,1]  1
    r[0,1]    mccormick2[0,1]  1
    r[0,1]    mccormick3[0,1]  1
    r[0,2]    OBJ       2.202
    r[0,2]    mccormick1[0,2]  1
    r[0,2]    mccormick2[0,2]  1
    r[0,2]    mccormick3[0,2]  1
    r[1,0]    OBJ       6.5489999999999995e+00
    r[1,0]    mccormick1[1,0]  1
    r[1,0]    mccormick2[1,0]  1
    r[1,0]    mccormick3[1,0]  1
    r[1,2]    OBJ       5.179
    r[1,2]    mccormick1[1,2]  1
    r[1,2]    mccormick2[1,2]  1
    r[1,2]    mccormick3[1,2]  1
    r[2,0]    OBJ       2.202
    r[2,0]    mccormick1[2,0]  1
    r[2,0]    mccormick2[2,0]  1
    r[2,0]    mccormick3[2,0]  1
    r[2,1]    OBJ       5.179
    r[2,1]    mccormick1[2,1]  1
    r[2,1]    mccormick2[2,1]  1
    r[2,1]    mccormick3[2,1]  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      flow_cons_source  1
    RHS1      flow_cons_target  1
    RHS1      primal_lower  77
    RHS1      mccormick3[0,1]  -1
    RHS1      mccormick3[0,2]  -1
    RHS1      mccormick3[1,0]  -1
    RHS1      mccormick3[1,2]  -1
    RHS1      mccormick3[2,0]  -1
    RHS1      mccormick3[2,1]  -1
BOUNDS
 BV BND1      y[0,1]  
 BV BND1      y[0,2]  
 BV BND1      y[1,0]  
 BV BND1      y[1,2]  
 BV BND1      y[2,0]  
 BV BND1      y[2,1]  
 BV BND1      x[0,1]  
 BV BND1      x[0,2]  
 BV BND1      x[1,0]  
 BV BND1      x[1,2]  
 BV BND1      x[2,0]  
 BV BND1      x[2,1]  
 BV BND1      u[0,1]  
 BV BND1      u[0,2]  
 BV BND1      u[1,0]  
 BV BND1      u[1,2]  
 BV BND1      u[2,0]  
 BV BND1      u[2,1]  
 BV BND1      r[0,1]  
 BV BND1      r[0,2]  
 BV BND1      r[1,0]  
 BV BND1      r[1,2]  
 BV BND1      r[2,0]  
 BV BND1      r[2,1]  
ENDATA
