* Signature: 0xf9a0f44b955b8bcb
NAME nohadani_3_6
ROWS
 N  OBJ
 E  flow_cons_inner_nodes[0]
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
    y[0,1]    OBJ       62.27
    y[0,1]    flow_cons_inner_nodes[0]  -1
    y[0,1]    flow_cons_source  -1
    y[0,1]    mccormick2[0,1]  -1
    y[0,1]    mccormick3[0,1]  -1
    y[0,2]    OBJ       35
    y[0,2]    flow_cons_inner_nodes[0]  -1
    y[0,2]    flow_cons_target  1
    y[0,2]    mccormick2[0,2]  -1
    y[0,2]    mccormick3[0,2]  -1
    y[1,0]    OBJ       62.27
    y[1,0]    flow_cons_inner_nodes[0]  1
    y[1,0]    flow_cons_source  1
    y[1,0]    mccormick2[1,0]  -1
    y[1,0]    mccormick3[1,0]  -1
    y[1,2]    OBJ       75.06
    y[1,2]    flow_cons_source  1
    y[1,2]    flow_cons_target  1
    y[1,2]    mccormick2[1,2]  -1
    y[1,2]    mccormick3[1,2]  -1
    y[2,0]    OBJ       35
    y[2,0]    flow_cons_inner_nodes[0]  1
    y[2,0]    flow_cons_target  -1
    y[2,0]    mccormick2[2,0]  -1
    y[2,0]    mccormick3[2,0]  -1
    y[2,1]    OBJ       75.06
    y[2,1]    flow_cons_source  -1
    y[2,1]    flow_cons_target  -1
    y[2,1]    mccormick2[2,1]  -1
    y[2,1]    mccormick3[2,1]  -1
    x[0,1]    OBJ       1
    x[0,1]    primal_lower  0.24
    x[0,2]    OBJ       1
    x[0,2]    primal_lower  12.33
    x[1,0]    OBJ       1
    x[1,0]    primal_lower  3.94
    x[1,2]    OBJ       1
    x[1,2]    primal_lower  4.14
    x[2,0]    OBJ       1
    x[2,0]    primal_lower  10.96
    x[2,1]    OBJ       1
    x[2,1]    primal_lower  4.49
    u[0,1]    primal_lower  51
    u[0,1]    mccormick1[0,1]  -1
    u[0,1]    mccormick3[0,1]  -1
    u[0,2]    primal_lower  23
    u[0,2]    mccormick1[0,2]  -1
    u[0,2]    mccormick3[0,2]  -1
    u[1,0]    primal_lower  33
    u[1,0]    mccormick1[1,0]  -1
    u[1,0]    mccormick3[1,0]  -1
    u[1,2]    primal_lower  78
    u[1,2]    mccormick1[1,2]  -1
    u[1,2]    mccormick3[1,2]  -1
    u[2,0]    primal_lower  83
    u[2,0]    mccormick1[2,0]  -1
    u[2,0]    mccormick3[2,0]  -1
    u[2,1]    primal_lower  49
    u[2,1]    mccormick1[2,1]  -1
    u[2,1]    mccormick3[2,1]  -1
    r[0,1]    OBJ       6.227
    r[0,1]    mccormick1[0,1]  1
    r[0,1]    mccormick2[0,1]  1
    r[0,1]    mccormick3[0,1]  1
    r[0,2]    OBJ       3.5
    r[0,2]    mccormick1[0,2]  1
    r[0,2]    mccormick2[0,2]  1
    r[0,2]    mccormick3[0,2]  1
    r[1,0]    OBJ       6.227
    r[1,0]    mccormick1[1,0]  1
    r[1,0]    mccormick2[1,0]  1
    r[1,0]    mccormick3[1,0]  1
    r[1,2]    OBJ       7.506
    r[1,2]    mccormick1[1,2]  1
    r[1,2]    mccormick2[1,2]  1
    r[1,2]    mccormick3[1,2]  1
    r[2,0]    OBJ       3.5
    r[2,0]    mccormick1[2,0]  1
    r[2,0]    mccormick2[2,0]  1
    r[2,0]    mccormick3[2,0]  1
    r[2,1]    OBJ       7.506
    r[2,1]    mccormick1[2,1]  1
    r[2,1]    mccormick2[2,1]  1
    r[2,1]    mccormick3[2,1]  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      flow_cons_source  1
    RHS1      flow_cons_target  1
    RHS1      primal_lower  83
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
