//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax = 10;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];

//-----------------------------------------------------------------------------

pair r(real x) { return ( x, x-3 ); }
pair s(real x) { return ( x, 1-x ); }

draw( r(xmin)--r(xmax), p_curve );
draw( s(xmin)--s(xmax), p_curve );

label( "$y=x-3$", ( 6, 3), SE, p_curve );
label( "$y=1-x$", (-2, 3), SW, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
