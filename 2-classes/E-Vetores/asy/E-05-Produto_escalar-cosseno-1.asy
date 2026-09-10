//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -2;
real x_max =  8;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = (   0, 0   );
pair A = ( 5.7, 1.5 );
pair B = ( 3.2, 4.7 );

real a1 = 180 * atan2( A.y, A.x ) / pi;
real a2 = 180 * atan2( B.y, B.x ) / pi;

draw( O--A, pens[0]+1, Arrow );
draw( O--B, pens[0]+1, Arrow );


draw( arc(O, 1, a1, a2), black );

label("$\vec{u}$", 0.6*A, NW );
label("$\vec{v}$", 0.5*B, SE );
label("$\theta$",  1.25 * dir((a1+a2)/2) );






clip_to_axis();

//-----------------------------------------------------------------------------

