//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax = 15;
real ymin = -3;
real ymax =  9;

real a = 3.5;
real b = 1.5;

real h = 7;
real k = 6;
real t = 23;

pair C = (h, k);

//-----------------------------------------------------------------------------

draw( (xmin, 0)--(xmax, 0), Arrows(7pt) );
draw( (0, ymin)--(0, ymax), Arrows(7pt) );

label( "$x$", (xmax, -0.2), SW );
label( "$y$", (-0.2, ymax), SW );

//-----------------------------------------------------------------------------

draw( rotate(t) * ((xmin, 0)--(xmax, 0)), magenta, Arrows(7pt) );
draw( rotate(t) * ((0, ymin)--(0, ymax)), magenta, Arrows(7pt) );

label( "$\mu$", rotate(t) * (xmax, 0), S, magenta );
label( "$\nu$", rotate(t) * (0, ymax), W, magenta );

//-----------------------------------------------------------------------------

real r = 8.8;
real s = 2.8;

draw( rotate(t) * ((0, s)--(r, s)--(r, 0)), gray );

label( "$r$", rotate(t) * (r, 0), S );
label( "$s$", rotate(t) * (0, s), W );

//-----------------------------------------------------------------------------

dot(C);

draw( shift(C) * rotate(t) * scale(a, b) * unitcircle, pens[0] );

//-----------------------------------------------------------------------------
