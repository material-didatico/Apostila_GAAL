//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair O = (0, 0);
pair v = (5, 3.5); 
pair n = (0, 4);

real a1 = 180 * atan2( v.y, v.x ) / pi;
real a2 = 180 * atan2( n.y, n.x ) / pi;
real a3 = 0;

draw( (-8, 0)--(8, 0) );
draw( (-9v)--(9v) );

draw( arc( O, 1.8, a3, a1 ) );







label( "$r$",      -0.8v,   S );
label( "$\alpha$", (-4, 0), N );





label( "$\theta\vphantom{\dfrac{\pi}{2}}$", 1.9 * dir((a1+a3)/2), E );

pair box_min = (-6, -4);
pair box_max = ( 8,  6);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

