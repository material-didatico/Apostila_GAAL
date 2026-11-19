//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax =  9;
real ymin = -9;
real ymax =  3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real r = 5;
pair c = (2, -3);

draw( circle(c, r), p_curve );

dot(c, p_dot);
label("$C$", c, NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
