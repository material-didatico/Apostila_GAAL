//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -2;
real x_max =  6;
real y_min = -2;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0, 0 );
pair A = ( 4, 1 );
pair B = ( 1, 3 );

draw( O--A, pens[0], Arrow );
draw( O--B, pens[0], Arrow );


label( "$\vec{u}$",             A/2, SE );
label( "$\vec{v}$",             B/2, NW );


clip_to_axis();

//-----------------------------------------------------------------------------





