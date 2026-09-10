//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(6cm);

real x_min = -2;
real x_max =  5;
real y_min = -2;
real y_max =  4;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0,  0 );
pair A = ( 2, -1 );
pair V = ( 2,  3 );

draw( O--V,     gray+1,  Arrow);
draw( A--(A+V), pens[0], Arrow);

dot( A, pens[0] + 3pt );

label( "$\vec{v}$",     V/2, NW );
label( "$\vec{v}$", A + V/2, NW );
label( "$A$",       A,       SE );

clip_to_axis();

//-----------------------------------------------------------------------------
