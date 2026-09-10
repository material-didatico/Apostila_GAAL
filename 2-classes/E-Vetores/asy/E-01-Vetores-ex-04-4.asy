//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

real x_min = -8;
real x_max =  8;
real y_min = -6;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair field( pair p )
{
  return ( 
    2 p.x + p.y - 1,
    1 + p.y - p.x
  );
}

for( real x = -7; x < 8; ++x )
for( real y = -5; y < 6; ++y )
{
  pair p = ( x, y);
  pair v = field(p);
  
  draw( p--(p+0.1*v), pens[1] + 1pt, Arrow(size=2mm));
}

clip_to_axis();

//-----------------------------------------------------------------------------
