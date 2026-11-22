//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -13;
real xmax =  9;
real ymin = -5;
real ymax =  7;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real a = 4; 
real b = 3; 

pair C = (-2, 1);

pair h_dir(real t) { return ( a*cosh(t), b*sinh(t) ); }
pair h_esq(real t) { return (-a*cosh(t), b*sinh(t) ); }

draw( shift(C) * graph( h_dir, -4, 4), p_curve );
draw( shift(C) * graph( h_esq, -4, 4), p_curve );

//-----------------------------------------------------------------------------

pair A = C - ( a, 0 );
pair B = C + ( a, 0 );

dot(A, p_dot);
dot(B, p_dot);
dot(C, p_dot);

label("$(-6, 1)$", A, W, p_curve );
label("$( 2, 1)$", B, E, p_curve );
label("$(-2, 1)$", C, N, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
