//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -1;
real xmax =  4;
real ymin = -3;
real ymax =  2;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

pair c = (2, -1);

dot(c, p_dot);
label("$S$", c, NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
