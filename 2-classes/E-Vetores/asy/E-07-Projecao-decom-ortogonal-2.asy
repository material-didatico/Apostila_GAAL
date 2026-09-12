//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -2;
real x_max =  8;
real y_min = -2;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair O = ( 0, 0 );
pair V = ( 3, 4 );
pair U = ( 3, 1 );
pair X = dot(V, U) / dot(U, U) * U; 
pair Y = V - X;

draw(  -5U--5U,   dashed );
draw( X+5Y--X-5Y, dashed );
draw( 0.95X--0.95X+0.07Y--X+0.07Y--X--0.95X );

draw( O--V, pens[0], Arrow );
draw( O--U, pens[0], Arrow );



label( "$\vec{w}$", V/2, NW );
label( "$\vec{v}$", U/2, SE );



clip_to_axis();

//-----------------------------------------------------------------------------
