//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.5cm, 0);

pair box_min = (0, 0);
pair box_max = (6, 9);

pair p = (1, 0);
pair q = (3, 0);
pair v = (2, 9);








draw( p--p+v, pens[0]);
draw( q--q+v, pens[1]);







label( "$r$", p+0.9v, W);
label( "$s$", q+0.9v, E);






draw( box(box_min, box_max) );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
