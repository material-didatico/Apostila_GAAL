//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(11cm);

real x_min = -2;
real x_max =  8;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0, 0 );
pair A = ( 4, 1 );
pair B = ( 2, 3 );
pair C = A + B;

draw( O--A, pens[0], Arrow );
draw( O--B, pens[0], Arrow );

label( "$\vec{u}$", A/2, SE );
label( "$\vec{v}$", B/2, NW );

clip_to_axis();

//-----------------------------------------------------------------------------



