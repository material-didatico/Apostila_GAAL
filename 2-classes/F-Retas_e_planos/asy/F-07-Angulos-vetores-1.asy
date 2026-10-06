//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair O = (  0, 0);
pair V = (5, 0.5); 
pair W = (2, 4.1);

real a1 = 180 * atan2( V.y, V.x ) / pi;
real a2 = 180 * atan2( W.y, W.x ) / pi;

draw( arc( O, 1.5, a1, a2 ) );

draw( O--V, pens[0], Arrow(size=3mm) );
draw( O--W, pens[0], Arrow(size=3mm) );

dot(O, pens[0]+3);

label( "$\vec{v}$", 0.7V, S );
label( "$\vec{w}$", 0.8W, NW );

label( "$\theta$", 1.75 * dir((a1+a2)/2) );

pair box_min = (-1, -1);
pair box_max = ( 6,  6);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

