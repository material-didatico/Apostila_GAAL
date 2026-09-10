//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -6;
real x_max =  6;
real y_min = -4;
real y_max =  4;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0, 0 );
pair A = ( 2, 1 );

draw( O--(-2A),pens[1], Arrow );
draw( O--A,    pens[0], Arrow );

label( "$\vec{u}$",    0.4A, N );
label( "$-2\vec{u}$", -1.3A, S );

clip_to_axis();

//-----------------------------------------------------------------------------
