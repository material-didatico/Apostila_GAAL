//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

real x_min = -7;
real x_max =  7;
real y_min = -7;
real y_max =  7;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

real r = 4;
int  N = 300;
path circ;

for (int i = 0; i <= N; ++i) {
  real t = 2pi * i / N;
  real x = r * cos(t);
  real y = r * sin(t);
  circ = circ -- (x, y);
}

draw(circ, pens[0]);

pair pos  = (4.5, 3.5); 
pair size = (1.7, 0.4);
fill(box(pos - size, pos + size), white);
label("$x^2 + y^2 = 4^2$", pos);

clip_to_axis();

//-----------------------------------------------------------------------------
