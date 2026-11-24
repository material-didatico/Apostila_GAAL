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

//-----------------------------------------------------------------------------

real a = sqrt(5); 
real b = sqrt(3); 

real r = 0;
real s = 0;

//-----------------------------------------------------------------------------

real t = 45; // 180 * atan2(P_21, P_11) / pi;

real mmin = -6;
real mmax =  6;
real nmin = -6;
real nmax =  6;

draw( rotate(t) * ((mmin, 0)--(mmax, 0)), magenta, Arrows(7pt) );
draw( rotate(t) * ((0, nmin)--(0, nmax)), magenta, Arrows(7pt) );

label( "$\mu$", rotate(t) * (mmax, 0), E, magenta );
label( "$\nu$", rotate(t) * (0, nmax), W, magenta );

//-----------------------------------------------------------------------------

draw( rotate(t) * scale(a, b) * unitcircle, p_curve );

//-----------------------------------------------------------------------------

clip_to_axis();

//-----------------------------------------------------------------------------
