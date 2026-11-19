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

real p = -4;

pair f(real t) 
{ 
  return ( t^2 / (4*p), t ); 
}

pair A = (  p, 0);
pair B = f(-3.5);
pair C = ( -p, B.y);

draw( graph(f, ymin, ymax), p_curve );

draw((-p, ymin)--(-p, ymax), p_reta);

draw( A--B--C, p_dist );

dot(A, p_dot);
dot(B, p_dot);
dot(C, p_dot);

label( "$p = " + string(p) + "$", (0.5, ymax-1), NE );
label( "$(p, 0)$", A+(0,0.2), N );
label( "$(x, y)$", B,         W,  p_curve );
label( "$x=-p$",   (-p, -5),  NW, p_reta  );

clip_to_axis();

//-----------------------------------------------------------------------------
