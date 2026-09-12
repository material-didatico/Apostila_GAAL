//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -2;
real x_max =  8;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O=( 0, 0 );
pair V=( 4, 3 );
pair X=( 4, 0 );
pair Y=( 0, 3 );

draw( O--V, pens[0], Arrow );
draw( O--X, pens[1], Arrow );
draw( X--V, pens[2], Arrow );

label( "$\vec{v}$", V/2, NW );
label( "$\vec{v}_x$", 0.65X, N );
label( "$\vec{v}_y$", X+Y/2, E );

clip_to_axis();

//-----------------------------------------------------------------------------
