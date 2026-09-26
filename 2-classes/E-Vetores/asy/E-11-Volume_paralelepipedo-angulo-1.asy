//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair OO = ( 0, 0 );
pair ZZ = ( 2, 3 );
pair VV = ( 4, 0 );









draw( OO--VV, pens[0],      Arrow );
draw( OO--ZZ, pens[0],      Arrow );




label( "$\vec{v}$ e $\vec{w}$",  0.5VV, S  );
label( "$\vec{z}$",                 ZZ, N  );






draw( (-0.5, -0.5)--(4.5, 4.5), invisible );

//-----------------------------------------------------------------------------



