//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.5cm, 0);

pair box_min = (0, 0);
pair box_max = (6, 9);

pair p = (2, 0);
pair v = (2, 9);









draw( p--p+v, pens[0]);








label( "$r \equiv s$", p+0.9v, SE );







draw( box(box_min, box_max) );
clip( box(box_min, box_max) );

//-----------------------------------------------------------------------------
