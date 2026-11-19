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

real zo =  2;
real s  =  0.25;
real t  = -0.10;



cone.curvaElipse( zo, s, t, h, 800, pen_conica );

//-----------------------------------------------------------------------------
