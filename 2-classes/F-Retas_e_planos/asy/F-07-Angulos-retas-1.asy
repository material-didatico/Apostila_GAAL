//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair O = (  0, 0);
pair V = (5, 0.5); 
pair W = (2, 2.1);

real a1 = 180 * atan2( V.y, V.x ) / pi;
real a2 = 180 * atan2( W.y, W.x ) / pi;
real a3 = 180 * atan2( -W.y, -W.x ) / pi;

draw( (-9V)--(9V) );
draw( (-9W)--(9W) );


draw( arc( O, 1.5, a1, a2 ) );







label( "$r$", 1.3V, S );
label( "$s$", 2.2W, N );






label( "$\theta$", 1.75 * dir((a1+a2)/2) );


pair box_min = (-6, -4);
pair box_max = ( 8,  6);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

