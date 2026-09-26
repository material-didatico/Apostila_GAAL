//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair OO = ( 0, 0 );
pair ZZ = ( 2, 3 );
pair VV = ( 4, 0 );
pair NN = ( 0, 4 );
pair CC = ( 0, ZZ.y );



fill( OO--ZZ--CC--cycle, lightgray );
draw( OO--ZZ--CC--cycle );


draw( OO--VV, pens[0],      Arrow );
draw( OO--ZZ, pens[0],      Arrow );
draw( OO--NN, linewidth(1), Arrow );

draw( OO--CC, pens[1] );

label( "$\vec{v}$ e $\vec{w}$",  0.5VV, S  );
label( "$\vec{z}$",                 ZZ, N  );
label( "$\vec{v}\times\vec{w}$",    NN, NE );
label( "$h$",                    0.6CC, W  );




draw( (-0.5, -0.5)--(4.5, 4.5), invisible );

//-----------------------------------------------------------------------------



