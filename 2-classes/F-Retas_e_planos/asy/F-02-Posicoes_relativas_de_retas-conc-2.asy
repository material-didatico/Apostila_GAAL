//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.5cm, 0);

pair box_min = (0, 0);
pair box_max = (6, 9);

pair p = (1.5, 0);
pair q = (0, 2);
pair v = (2, 9);
pair w = (9, 2);

pair P = p + 0.5v;
pair Q = q + 0.3w;

pair VV = 0.2v;
pair WW = 0.3w;

draw( p--p+v);
draw( q--q+w);
draw( P--P+VV, pens[0], Arrow(size=3mm) );
draw( Q--Q+WW, pens[1], Arrow(size=3mm) );


dot(P, pens[0]+3);
dot(Q, pens[1]+3);

label( "$r$", p+0.1v, E );
label( "$s$", q+0.1w, N );
label( "$\vec{p}$", P, W);
label( "$\vec{q}$", Q, S);
label( "$\vec{v}$", P+0.5VV, E );
label( "$\vec{w}$", Q+0.5WW, N );


draw( box(box_min, box_max) );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
