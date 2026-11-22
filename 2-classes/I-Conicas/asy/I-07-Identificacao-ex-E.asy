//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -4;
real xmax =  8;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];

//-----------------------------------------------------------------------------

draw( (-1, ymin)--(-1, ymax), p_curve );
draw( ( 5, ymin)--( 5, ymax), p_curve );

label( "$x=-1$", (-1, 3), NW, p_curve );
label( "$x= 5$", ( 5, 3), NW, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
