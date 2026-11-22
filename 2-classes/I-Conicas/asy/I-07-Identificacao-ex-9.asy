//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -10;
real xmax =  4;
real ymin = -10;
real ymax =  4;

draw_axes(xmin, xmax, 2, ymin, ymax, 2);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real p = -2;

pair f(real t) 
{ 
  return ( t^2 / (4*p), t ) + (-1, -3); 
}

pair AA = f(-4);
pair BB = f(-2);
pair CC = f( 0);
pair DD = f( 2);
pair EE = f( 4);

draw( graph(f, ymin+3, ymax+3), p_curve );

dot(AA, p_dot);
dot(BB, p_dot);
dot(CC, p_dot);
dot(DD, p_dot);
dot(EE, p_dot);

label("$(" + string(AA.x) + ", " + string(AA.y) + ")$", AA, W, p_curve );
label("$(" + string(BB.x) + ", " + string(BB.y) + ")$", BB, W, p_curve );
label("$(" + string(CC.x) + ", " + string(CC.y) + ")$", CC, W, p_curve );
label("$(" + string(DD.x) + ", " + string(DD.y) + ")$", DD, SW, p_curve );
label("$(" + string(EE.x) + ", " + string(EE.y) + ")$", EE, W, p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
