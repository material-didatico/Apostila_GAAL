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

draw( arc( O, 1.3, a3, a1 ), magenta );
draw( arc( O, 1.5, a1, a2 ), blue    );

draw( O--V, pens[0], Arrow(size=3mm) );
draw( O--W, pens[0], Arrow(size=3mm) );
draw( O--(-W), pens[1], Arrow(size=3mm) );

dot(O, pens[0]+3);

label( "$r$", 1.3V, S );
label( "$s$", 2.2W, N );

label( "$\vec{v}$", 0.7V, S );
label( "$\vec{w}$", W, NW );

label( "$-\vec{w}$", -0.9W, SE );

label( "$\theta$", 1.75 * dir((a1+a2)/2) );


pair box_min = (-6, -4);
pair box_max = ( 8,  6);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

