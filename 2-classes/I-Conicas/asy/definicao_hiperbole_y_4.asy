//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax =  5;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0] + 1.5pt;
pen p_dist  = pens[1];
pen p_dot   = pens[1] + 3pt;
pen p_asymp = gray + dashed + 1pt + linetype(new real[] {3, 3});

//-----------------------------------------------------------------------------

real a = 1.0; 
real b = 2.0; 
real c = sqrt(a^2 + b^2);

pair h_dir(real t) { return ( b*sinh(t),  a*cosh(t)); }
pair h_esq(real t) { return ( b*sinh(t), -a*cosh(t)); }

draw( graph( h_dir, -4, 4), p_curve );
draw( graph( h_esq, -4, 4), p_curve );

draw(h_dir(-8) -- h_esq( 8), p_asymp );
draw(h_dir( 8) -- h_esq(-8), p_asymp );

//-----------------------------------------------------------------------------

pair A = ( 0, -c );
pair B = h_dir(1);
pair C = ( 0,  c );

draw( A--B--C, p_dist );

dot(A, p_dot);
dot(B, p_dot);
dot(C, p_dot);

label("$a = " + format("%#.1f", a) + "\quad b = " + format("%#.1f", b) + "$", (0.3, 4), NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
