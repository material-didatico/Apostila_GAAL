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

real zo =  1.5;
real s  =  1.5;
real t  = -5.0;

h = 2.95;

cone.curvaHiperbole( zo, s, t, h, -h, h, 800, pen_conica );

//-----------------------------------------------------------------------------
