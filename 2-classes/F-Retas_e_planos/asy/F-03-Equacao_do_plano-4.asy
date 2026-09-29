//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair A = (1, 1);
pair v = (3,   0.5);
pair w = (0.5, 1.5);
pair P = A + 2v + 3w;
pair Q = A + 2v;
pair R = A + 3w;

draw( A--R--P, dashed);

draw( A--Q, pens[1], Arrow(size=3mm) );
draw( Q--P, pens[1], Arrow(size=3mm) );

draw( A--A+v, pens[0], Arrow(size=3mm) );
draw( A--A+w, pens[0], Arrow(size=3mm) );
draw( A--P,   pens[2], Arrow(size=3mm) );

dot(A, pens[0]+3);
dot(P, pens[0]+3);

label( "$A$", A, SW );
label( "$P$", P, NE );
label( "$\overrightarrow{AP}=s\vec{v}+t\vec{w}$", A+0.4(P-A), SE );
label( "$\vec{v}$", A+v/2, S );
label( "$\vec{w}$", A+w/2, W );
label( "$s\vec{v}$", A+1.6v, S );
label( "$t\vec{w}$", 0.5(Q+P), E );

pair box_min = (0, 0);
pair box_max = P + (1, 1);

draw( box(box_min, box_max), invisible );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
