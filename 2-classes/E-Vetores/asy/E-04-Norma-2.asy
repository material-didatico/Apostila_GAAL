//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -2;
real x_max = 10;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair A = ( 0, 0 );
pair B = ( 3, 2 );
pair C = ( 5, 1 );
pair D = ( 8, 3 );
pair V = ( 3, 0 );

dot( A );
dot( B );
dot( C );
dot( D );

draw( A--B, pens[0], Arrow );
draw( C--D, pens[0], Arrow );

label( "$A$", A, SW );
label( "$B$", B, N  );
label( "$C$", C, SW );
label( "$D$", D, N  );

label( "$\vec{u}$", (A+B)/2, NW );
label( "$\vec{u}$", (C+D)/2, NW );

clip_to_axis();

//-----------------------------------------------------------------------------

