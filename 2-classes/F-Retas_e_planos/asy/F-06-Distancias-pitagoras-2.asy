//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair A = (1, 1);
pair B = (5, 4);
pair C = (5, 1);

draw( (-0.5,0)--(6,0), Arrow) ;
draw( (0,-0.5)--(0,5), Arrow) ;

draw( A--B, pens[0] );
draw( A--C );
draw( C--B );

dot( A );
dot( B );
dot( C );

label( "$A$", A, SW );
label( "$B$", B, NE );
label( "$C$", C, SE );

label(      "$x_{2}-x_{1}$",               (A+C)/2, S );
label(Label("$y_{2}-y_{1}$", Rotate(B-C)), (C+B)/2, E );
label(Label("$d(A,B)$", Rotate(B-A)),      (A+B)/2, NW);

//-----------------------------------------------------------------------------

