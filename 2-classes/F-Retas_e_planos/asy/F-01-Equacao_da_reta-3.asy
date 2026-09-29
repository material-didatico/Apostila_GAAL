//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair box_min = (-1, -1);
pair box_max = (9, 5);

pair P = ( 0, 0 );
pair V = ( 3, 2 );
pair W = 1.7V;

draw( -2V--4V );

dot( V );
dot( W );




dot( P );

label( "$r$", 1.3W, SE );
label( "$P$", P, N );
label( "$Q$", V, N );
label( "$R$", W, N );

label( "$\vec{p} = (a, b)$", P, SE );
label( "$\vec{q} = (c, d)$", V, SE );
label( "?",                  W, SE );





draw( box_min--box_max, invisible );
clip(box(box_min, box_max));

//-----------------------------------------------------------------------------
