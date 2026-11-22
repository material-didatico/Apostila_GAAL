//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -7;
real xmax =  7;
real ymin = -9;
real ymax =  2;

draw_axes(xmin, xmax, 2, ymin, ymax, 2);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real p = -0.5;

real f(real x) { return x^2 / (4*p); }

pair AA = (-4, f(-4));
pair BB = (-2, f(-2));
pair CC = ( 0, f( 0));
pair DD = ( 2, f( 2));
pair EE = ( 4, f( 4));

draw( graph(f, xmin, xmax), p_curve );

dot(AA, p_dot);
dot(BB, p_dot);
dot(CC, p_dot);
dot(DD, p_dot);
dot(EE, p_dot);

label( "$(" + string(AA.x) + ", " + string(AA.y) + ")$", AA, W, p_curve );
label( "$(" + string(BB.x) + ", " + string(BB.y) + ")$", BB, W, p_curve );
label( "$(" + string(DD.x) + ", " + string(DD.y) + ")$", DD, E, p_curve );
label( "$(" + string(EE.x) + ", " + string(EE.y) + ")$", EE, E, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
