//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(14cm);

real x_min = -7;
real x_max =  7;
real y_min = -3;
real y_max =  3;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

real f(real x){
	return cos(x);
}

draw(graph(f, -7, 7), pens[0]);

label( "$y=\cos(x)$", (0.2, 2.5), E );

clip_to_axis();

//-----------------------------------------------------------------------------
