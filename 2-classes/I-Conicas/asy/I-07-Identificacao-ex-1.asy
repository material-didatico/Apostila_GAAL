//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real r = 4;

draw( circle((0, 0), r), p_curve );

dot( (-4, 0), p_dot );
dot( ( 4, 0), p_dot );
dot( (0, -4), p_dot );
dot( (0,  4), p_dot );

label("$(-4, 0)$", (-4, 0), NW, p_curve );
label("$( 4, 0)$", ( 4, 0), NE, p_curve );
label("$(0, -4)$", (0, -4), SE, p_curve );
label("$(0,  4)$", (0,  4), NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
