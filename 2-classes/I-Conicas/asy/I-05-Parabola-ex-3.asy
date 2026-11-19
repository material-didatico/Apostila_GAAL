//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -3;
real xmax =  9;
real ymin = -4;
real ymax =  4;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real p = 3;

real f(real x) { return x^2 / (4*p); }

pair VV = (3, -1);

pair AA = VV + (-4, f(-4));
pair BB = VV + (-2, f(-2));
pair CC = VV; 
pair DD = VV + ( 2, f( 2));
pair EE = VV + ( 4, f( 4));

draw( shift(VV) * graph(f, -6, 6), p_curve );

dot(AA, p_dot);
dot(BB, p_dot);
dot(CC, p_dot);
dot(DD, p_dot);
dot(EE, p_dot);

label( "$(" + string(CC.x) + ", " + string(CC.y) + ")$", CC, S,  p_curve );
label( "$\left( -1, \dfrac{ 1}{3}\right)$", AA, N,  p_curve );
label( "$\left(  1, \dfrac{-2}{3}\right)$", BB, S, p_curve );
label( "$\left(  5, \dfrac{-2}{3}\right)$", DD, S, p_curve );
label( "$\left(  7, \dfrac{ 1}{3}\right)$", EE, N,  p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
