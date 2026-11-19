//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dist  = pens[1];
pen p_dot   = pens[1] + 3pt;

//-----------------------------------------------------------------------------

real a = 5;
real b = 5; 
real c = sqrt(a^2 - b^2); 

draw( scale(a, b) * unitcircle, p_curve );

//-----------------------------------------------------------------------------

pair A = ( -c,       0        );
pair B = ( a*cos(1), b*sin(1) );
pair C = (  c,       0        );

draw(A--B--C, p_dist );

dot(A, p_dot);
dot(B, p_dot);
dot(C, p_dot);

label("$a = " + string(a) + "\quad b = "+ string(b) + "$", (1, 5), NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
