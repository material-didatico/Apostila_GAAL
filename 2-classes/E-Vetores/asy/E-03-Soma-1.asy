//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(11cm);

real x_min = -2;
real x_max =  8;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0,   0 );
pair U = ( 4,   1 );
pair V = ( 1.5, 2 );
pair W = U + V;

draw( O--U, pens[0], Arrow );
draw( O--V, pens[0], Arrow );

label( "$\vec{u}$", U/2, SE );
label( "$\vec{v}$", V/2, NW );

clip_to_axis();

//-----------------------------------------------------------------------------



