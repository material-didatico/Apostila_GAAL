//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real p = 3;

pair f(real t) 
{ 
  return ( t^2 / (4*p), t ); 
}

pair AA = f(-4);
pair BB = f(-2);
pair CC = f( 0);
pair DD = f( 2);
pair EE = f( 4);

draw( graph(f, xmin, xmax), p_curve );

dot(AA, p_dot);
dot(BB, p_dot);
dot(CC, p_dot);
dot(DD, p_dot);
dot(EE, p_dot);

label( "$\left(\dfrac{4}{3}, -4\right)$", AA, E, p_curve );
label( "$\left(\dfrac{1}{3}, -2\right)$", BB, E, p_curve );
label( "$\left(\dfrac{1}{3},  2\right)$", DD, E, p_curve );
label( "$\left(\dfrac{4}{3},  4\right)$", EE, E, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
