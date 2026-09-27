//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.5cm, 0);

pair box_min = (0, 0);
pair box_max = (6, 9);

pair p = (1.5, 0);
pair q = (0, 2);
pair v = (2, 9);
pair w = (9, 2);







draw( p--p+v, pens[0]);
draw( q--q+w, pens[1]);







label( "$r$", p+0.1v, E );
label( "$s$", q+0.1w, N );






draw( box(box_min, box_max) );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
