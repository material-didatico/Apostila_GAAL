//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm);

pair A = (0, 0);
pair B = (8, 0); 
pair C = (8, 6);

real a1 = 0;
real a2 = 180 * atan2( C.y, C.x ) / pi;
real a3 = a2 + 180;
real a4 = -90;

draw( arc( A, 1.5, a1, a2 ) );


draw( A--B--C--cycle, pens[0] );

label( "a", (4, 0), S  );
label( "b", (8, 3), E  );
label( "c", (4, 3), NW );

label( "$\phi$",   1.75 * dir((a1+a2)/2) );


label( "$\cos\phi=\dfrac{a}{c}$",             (0.8, 7), E );


pair box_min = (-1, -1);
pair box_max = ( 9,  9);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

