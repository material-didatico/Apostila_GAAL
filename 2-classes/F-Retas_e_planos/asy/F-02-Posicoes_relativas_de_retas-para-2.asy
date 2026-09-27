//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.5cm, 0);

pair box_min = (0, 0);
pair box_max = (6, 9);

pair p = (1, 0);
pair q = (3, 0);
pair v = (2, 9);


pair P = p + 0.2v;
pair Q = q + 0.7v;

pair VV =  0.2v;
pair WW = -0.3v;

draw( p--p+v );
draw( q--q+v );
draw( P--P+VV, pens[0], Arrow(size=3mm) );
draw( Q--Q+WW, pens[1], Arrow(size=3mm) );


dot(P, pens[0]+3);
dot(Q, pens[1]+3);

label( "$r$", p+0.9v, W);
label( "$s$", q+0.9v, E);
label( "$\vec{p}$", P, W);
label( "$\vec{q}$", Q, E);
label( "$\vec{v}$", P+0.5VV, W );
label( "$\vec{w}$", Q+0.5WW, E );


draw( box(box_min, box_max) );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
