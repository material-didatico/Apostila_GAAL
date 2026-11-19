//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];

//-----------------------------------------------------------------------------

real r = 4;

draw( circle((0, 0), r), p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
