//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair O = (  0, 0);
pair VV = 1.5(3, 0.5); 
pair WW = 1.5(2, 1.5);
pair N1 = rotate(90) * VV;
pair N2 = rotate(90) * WW;

draw( arc( O, 0.5VV, 0.5WW ) );


draw( (-9VV)--(9VV), pens[0] );
draw( (-9WW)--(9WW), pens[1] );




label( "$\alpha$", VV, S );
label( "$\beta$",  WW, N );




label( "$\theta$", 0.35(VV+WW) );


pair box_min = (-6, -4);
pair box_max = ( 8,  6);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

