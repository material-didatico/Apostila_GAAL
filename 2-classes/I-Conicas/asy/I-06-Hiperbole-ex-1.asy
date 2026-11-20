//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -9;
real xmax =  9;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real a = 3; 
real b = 2; 

pair h_dir(real t) { return ( a*cosh(t), b*sinh(t) ); }
pair h_esq(real t) { return (-a*cosh(t), b*sinh(t) ); }

draw( graph( h_dir, -4, 4), p_curve );
draw( graph( h_esq, -4, 4), p_curve );

//-----------------------------------------------------------------------------

pair A = ( -a, 0 );
pair B = (  a, 0 );

dot(A, p_dot);
dot(B, p_dot);

label("$(-3, 0)$", A, NE, p_curve );
label("$( 3, 0)$", B, NW, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
