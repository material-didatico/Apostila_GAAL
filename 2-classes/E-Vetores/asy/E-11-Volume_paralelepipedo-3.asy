//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair OO = ( 0, 0 );
pair VV = ( 5, 0 );
pair WW = ( 3, 3 );
pair ZZ = ( 1, 4 );

pair CC = VV + WW;

pair VZ = VV + ZZ;
pair WZ = WW + ZZ;
pair CZ = CC + ZZ;

fill( OO--VV--CC--WW--cycle, lightgray );

draw( OO--VV, pens[0]+0.5, Arrow );
draw( OO--WW, pens[0]+0.5+dashed, Arrow );
draw( OO--ZZ, pens[0]+0.5, Arrow );

draw( VV--CC );
draw( WW--CC, dashed );

draw( ZZ--VZ );
draw( ZZ--WZ );
draw( VZ--CZ );
draw( WZ--CZ );

draw( VV--VZ );
draw( WW--WZ, dashed );
draw( CC--CZ );

label( "$\vec{v}$", VV/2, SE );
label( "$\vec{w}$", WW/2, NW );
label( "$\vec{z}$", ZZ/2, W  );

draw( (-0.5, -0.5)--CZ+(0.5, 0.5), invisible );

//-----------------------------------------------------------------------------
