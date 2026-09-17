//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -2;
real x_max =  8;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0,   0 );
pair A = ( 4,   1 );
pair B = ( 1.5, 3 );
pair C = A + B;



draw( O--A, pens[0], Arrow );
draw( O--B, pens[0], Arrow );

draw( O--A--C--B--cycle, pens[1] );

label( "$\vec v$",   A/2, SE );
label( "$\vec w$",   B/2, NW );
label( "$A$",        A,   SE );
label( "$B$",        B,   NW );
label( "$C$",        C,   NE );

clip_to_axis();

//-----------------------------------------------------------------------------
