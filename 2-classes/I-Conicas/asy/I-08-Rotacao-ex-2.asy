//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -9;
real xmax =  9;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 3pt;
pen p_asymp = gray + dashed + linetype(new real[] {8, 5});

//-----------------------------------------------------------------------------

real a = sqrt(11)/3; 
real b = sqrt(11)/sqrt(3); 

real r = sqrt(2)/3;
real s = 0;

//-----------------------------------------------------------------------------

real t = 45; // 180 * atan2(P_21, P_11) / pi;

real mmin = -6;
real mmax =  6;
real nmin = -6;
real nmax =  6;

draw( shift((r,s)) * rotate(t) * ((mmin, 0)--(mmax, 0)), magenta, Arrows(7pt) );
draw( shift((r,s)) * rotate(t) * ((0, nmin)--(0, nmax)), magenta, Arrows(7pt) );

label( "$\mu$", shift((r,s)) * rotate(t) * (mmax, 0), E, magenta );
label( "$\nu$", shift((r,s)) * rotate(t) * (0, nmax), W, magenta );

//-----------------------------------------------------------------------------

pair h_dir(real t) { return ( b*sinh(t),  a*cosh(t) ); }
pair h_esq(real t) { return ( b*sinh(t), -a*cosh(t) ); }

draw( shift((r,s)) * rotate(t) * (h_dir(-8) -- h_esq( 8)), p_asymp );
draw( shift((r,s)) * rotate(t) * (h_dir( 8) -- h_esq(-8)), p_asymp );
                     
draw( shift((r,s)) * rotate(t) * graph( h_dir, -4, 4), p_curve );
draw( shift((r,s)) * rotate(t) * graph( h_esq, -4, 4), p_curve );

draw( (r, s), p_dot);

//-----------------------------------------------------------------------------

clip_to_axis();

//-----------------------------------------------------------------------------
