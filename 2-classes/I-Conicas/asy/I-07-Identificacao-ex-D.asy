//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax =  5;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

clip_to_axis();

//-----------------------------------------------------------------------------
