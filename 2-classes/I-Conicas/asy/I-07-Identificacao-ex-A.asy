//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -2;
real xmax =  6;
real ymin = -7;
real ymax =  2;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real r = 2;
pair C = (2, -3);

draw( shift(C) * circle((0, 0), r), p_curve );

pair P1 = C + (-r, 0);
pair P2 = C + ( r, 0);
pair P3 = C + (0, -r);
pair P4 = C + (0,  r);

dot( P1, p_dot );
dot( P2, p_dot );
dot( P3, p_dot );
dot( P4, p_dot );

label("$(" + string(P1.x) + ", " + string(P1.y) + ")$", P1, E, p_curve );
label("$(" + string(P2.x) + ", " + string(P2.y) + ")$", P2, E, p_curve );
label("$(" + string(P3.x) + ", " + string(P3.y) + ")$", P3, S, p_curve );
label("$(" + string(P4.x) + ", " + string(P4.y) + ")$", P4, S, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
