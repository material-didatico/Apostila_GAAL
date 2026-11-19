//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "cone.ah" as cone;

size(0, 8cm);

currentprojection = perspective(camera=(6,2,5), up=Z, target=(0,0,1));

pen pen_conica = pens[1] + 1pt;

//-----------------------------------------------------------------------------

real h = 3;

cone.drawCone(h, lightblue+opacity(0.6));

//-----------------------------------------------------------------------------

real zo =  0.9;
real s  =  1.0;
real t  = -1.5;



cone.curvaParabola(zo, s, t, h, -2.5, 2.5, 800, pen_conica);

//-----------------------------------------------------------------------------
