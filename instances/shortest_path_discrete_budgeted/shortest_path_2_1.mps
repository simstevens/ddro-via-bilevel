* Signature: 0xe07268892050a8ee
NAME sp_2_1
ROWS
 N  OBJ
 E  flow_cons_source
 E  flow_cons_target
 L  primal_lower_interdiction[0,1]
 L  primal_lower_interdiction[1,0]
 L  primal_lower_budget
 L  mccormick1[0,1]
 L  mccormick1[1,0]
 L  mccormick2[0,1]
 L  mccormick2[1,0]
 G  mccormick3[0,1]
 G  mccormick3[1,0]
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    y[0,1]    OBJ       104.62
    y[0,1]    flow_cons_source  1
    y[0,1]    flow_cons_target  1
    y[0,1]    mccormick2[0,1]  -1
    y[0,1]    mccormick3[0,1]  -1
    y[1,0]    OBJ       104.62
    y[1,0]    flow_cons_source  -1
    y[1,0]    flow_cons_target  -1
    y[1,0]    mccormick2[1,0]  -1
    y[1,0]    mccormick3[1,0]  -1
    x[0,1]    OBJ       1.95
    x[0,1]    primal_lower_interdiction[0,1]  1
    x[1,0]    OBJ       3.95
    x[1,0]    primal_lower_interdiction[1,0]  1
    u[0,1]    primal_lower_interdiction[0,1]  1
    u[0,1]    primal_lower_budget  1
    u[0,1]    mccormick1[0,1]  -1
    u[0,1]    mccormick3[0,1]  -1
    u[1,0]    primal_lower_interdiction[1,0]  1
    u[1,0]    primal_lower_budget  1
    u[1,0]    mccormick1[1,0]  -1
    u[1,0]    mccormick3[1,0]  -1
    r[0,1]    OBJ       1.0462000000000002e+01
    r[0,1]    mccormick1[0,1]  1
    r[0,1]    mccormick2[0,1]  1
    r[0,1]    mccormick3[0,1]  1
    r[1,0]    OBJ       1.0462000000000002e+01
    r[1,0]    mccormick1[1,0]  1
    r[1,0]    mccormick2[1,0]  1
    r[1,0]    mccormick3[1,0]  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      flow_cons_source  1
    RHS1      flow_cons_target  1
    RHS1      primal_lower_interdiction[0,1]  1
    RHS1      primal_lower_interdiction[1,0]  1
    RHS1      primal_lower_budget  2
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
