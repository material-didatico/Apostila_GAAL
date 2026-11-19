//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dist  = pens[1];
pen p_dot   = pens[1] + 3pt;

//-----------------------------------------------------------------------------

real r = 2;

draw( circle((0, 0), r), p_curve );

//-----------------------------------------------------------------------------

pair O = ( 0, 0 );
pair A = ( r*cos(1), r*sin(1) );

draw( O--A, p_dist );

dot(O, p_dot);
dot(A, p_dot);

label("$r = " + string(r) + "$", (-5, 5), NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
