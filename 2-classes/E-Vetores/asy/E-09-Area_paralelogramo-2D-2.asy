//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(9cm, 0);

real h = 3;
real b = 4;
real d = 1.5;

draw((-0.5,-0.5)--(b+0.5,h+0.5), invisible);

pair O = ( 0, 0 );
pair A = ( b, 0 );
pair B = ( d, h );
pair C = A + B;

fill( O--A--C--B--cycle, lightgray );
draw( O--A--C--B--cycle, pens[0] );

draw( (d, 0)--(d, 3) );

label( "$h$", (d,  h/2), E );
label( "$b$", (0.6b, 0), S );

//-----------------------------------------------------------------------------
