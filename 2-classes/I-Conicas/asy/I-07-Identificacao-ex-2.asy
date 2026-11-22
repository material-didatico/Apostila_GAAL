//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax =  5;
real ymin = -4;
real ymax =  4;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real a = 2;
real b = 3; 

draw( scale(a, b) * unitcircle, p_curve );

dot( (-2, 0), p_dot );
dot( ( 2, 0), p_dot );
dot( (0, -3), p_dot );
dot( (0,  3), p_dot );

label("$(-2, 0)$", (-2, 0), NW, p_curve );
label("$( 2, 0)$", ( 2, 0), NE, p_curve );
label("$(0, -3)$", (0, -3), SE, p_curve );
label("$(0,  3)$", (0,  3), NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
