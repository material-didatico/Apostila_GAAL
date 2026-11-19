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

real a = 4;
real b = 5; 
real c = sqrt(b^2 - a^2); 

draw( scale(a, b) * unitcircle, p_curve );

//-----------------------------------------------------------------------------

pair A = ( 0,        -c       );
pair B = ( a*cos(1), b*sin(1) );
pair C = ( 0,         c       );

draw(A--B--C, p_dist );

dot(A, p_dot);
dot(B, p_dot);
dot(C, p_dot);

label("$a = " + string(a) + "\quad b = "+ string(b) + "$", (1, 5), NE, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
