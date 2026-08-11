//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

real x_min = -7;
real x_max =  7;
real y_min = -7;
real y_max =  7;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

clip_to_axis();

//-----------------------------------------------------------------------------
