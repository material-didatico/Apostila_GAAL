//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.5cm, 0);

pair box_min = (0, 0);
pair box_max = (6, 9);

pair p = (2, 0);
pair v = (2, 9);
 


pair P = p + 0.1v;
pair Q = p + 0.8v;

pair VV =  0.2v;
pair WW = -0.3v;

draw( p--p+v );

draw( P--P+VV, pens[0], Arrow(size=3mm) );
draw( Q--Q+WW, pens[1], Arrow(size=3mm) );
draw( P--Q,    pens[2], Arrow(size=3mm) );

dot(P, pens[0]+3);
dot(Q, pens[1]+3);

label( "$r \equiv s$", p+0.9v, SE );

label( "$\vec{p}$", P, W);
label( "$\vec{q}$", Q, W);
label( "$\vec{v}$", P+0.5VV, E );
label( "$\vec{w}$", Q+0.5WW, E );
label( "$\vec{q}-\vec{p}$", (P+Q)/2, W );

draw( box(box_min, box_max) );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
