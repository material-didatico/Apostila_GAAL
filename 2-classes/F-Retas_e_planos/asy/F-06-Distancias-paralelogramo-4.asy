//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real d = 3;

pair A = (0, 0);
pair B = (9, 0);
pair C = (0, d);
pair D = (9, d);

pair P = (2, 0);
pair Q = (6, d);

pair v = ( 2, 0);
pair w = (-3, 0);

fill( P--P+v--Q+v--Q--cycle, lightgray + opacity(0.6) );

draw( A--B );
draw( C--D );
draw( P-(0.5,0)--P+(-0.5, d), dashed );

draw( P--P+v, pens[0], Arrow);
draw( Q--Q+w, pens[0], Arrow);
draw( P--Q,   pens[1], Arrow);

dot( P );
dot( Q );

draw( P--P+v--Q+v--Q--cycle, pens[2] );

label( "$r$", (1, d), N );
label( "$s$", (1, 0), N );
label( "$d(r, s)$", P+(-0.5, 0.8d), E );

label( "$\vec{p}$", P, S );
label( "$\vec{q}$", Q, N );
label( "$\vec{v}$", P+0.5v, S );
label( "$\vec{w}$", Q+0.5w, N );

label(Label("$\vec{h} = \vec{q}-\vec{p}$", Rotate(Q-P)), (P+Q)/2, NW);
label("$A=\|\vec{v}\times\vec{h}\|$", (6, 0.7), E );

pair box_min = (0,  -1);
pair box_max = (9, d+1);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------

