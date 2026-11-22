//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -14;
real xmax =  14;
real ymin = -10;
real ymax =  10;

draw_axes(xmin, xmax, 2, ymin, ymax, 2);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real a = 2; 
real b = 3; 

pair h_dir(real t) { return ( b*sinh(t),  a*cosh(t) ); }
pair h_esq(real t) { return ( b*sinh(t), -a*cosh(t) ); }

draw( graph( h_dir, -4, 4), p_curve );
draw( graph( h_esq, -4, 4), p_curve );

//-----------------------------------------------------------------------------

pair A = ( 0, -a );
pair B = ( 0,  a );

dot(A, p_dot);
dot(B, p_dot);

label("$(0, -2)$", A, S, p_curve );
label("$(0,  2)$", B, N, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
