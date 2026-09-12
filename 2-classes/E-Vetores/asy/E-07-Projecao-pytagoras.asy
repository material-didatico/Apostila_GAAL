//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 5cm);

pair O = ( 0, 0 );
pair V = ( 3, 4 );
pair U = ( 3, 1 );
pair X = dot(V, U) / dot(U, U) * U; 
pair Y = V - X;

real a1 = 180 * atan2( U.y, U.x ) / pi;
real a2 = 180 * atan2( V.y, V.x ) / pi;

draw(  -0.2U--1.5U,    dashed );
draw( X+1.2Y--X-0.55Y, dashed );

draw( O--X--V--O,                  pens[1] );
draw( 0.95X--0.95X+0.07Y--X+0.07Y, pens[1] );

draw( arc(O, 1, a1, a2), pens[1] );

draw( O--V, pens[0], Arrow );
draw( O--U, pens[0], Arrow );

label( "$\vec{w}$", V/2, NW );
label( "$\vec{v}$", U/2, SE );
label( "$\theta$",  1.25 * dir((a1+a2)/2) );

//-----------------------------------------------------------------------------
