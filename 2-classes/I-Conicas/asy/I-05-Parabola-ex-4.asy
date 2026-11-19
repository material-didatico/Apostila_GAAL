//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax =  5;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];

//-----------------------------------------------------------------------------

draw( (2, ymin)--(2, ymax), p_curve );

label( "$x=3$", (2, 2), E, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
