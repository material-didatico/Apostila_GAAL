//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(6cm);

real x_min = -3;
real x_max =  3;
real y_min = -3;
real y_max =  3;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair a = ( 1, -2);
pair b = (-1, -2) + a;

draw( a--b, pens[1] + 1pt, Arrow(TeXHead));
dot(  a,    pens[1] + 3pt );

clip_to_axis();

//-----------------------------------------------------------------------------
