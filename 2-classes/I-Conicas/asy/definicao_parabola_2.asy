//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0] + 1.5pt;
pen p_dist  = pens[1];
pen p_dot   = pens[1] + 3pt;
pen p_reta  = purple + 1pt;

//-----------------------------------------------------------------------------

real p =  2;

real f(real x) { return x^2 / (4*p); }

pair A = (0,    p     );
pair B = (3.5,  f(3.5));
pair C = (3.5, -p     );

draw( graph(f, xmin, xmax), p_curve );

draw((xmin, -p)--(xmax, -p), p_reta);

draw( A--B--C, p_dist );

dot(A, p_dot);
dot(B, p_dot);
dot(C, p_dot);

label( "$p = " + string(p) + "$", (1, ymax-1), NE );
label( "$(0, p)$",                A-(0.7,0),   W  );
label( "$(x, y)$",                B,           SE, p_curve );
label( "$y=-p$",                  (xmin, -p),  SE, p_reta  );

clip_to_axis();

//-----------------------------------------------------------------------------
