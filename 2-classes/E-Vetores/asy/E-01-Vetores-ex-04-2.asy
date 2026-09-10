//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7cm);

real x_min = -4;
real x_max =  4;
real y_min = -4;
real y_max =  4;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair field( pair p )
{
  return ( 
    2 p.x + p.y - 1,
    1 + p.y - p.x
  );
}

pair p = ( 1,  1);
pair v = field(p);

draw( p--(p+v), pens[1] + 1pt, Arrow(size=2mm));
dot(  p,    pens[1] + 3pt );

clip_to_axis();

//-----------------------------------------------------------------------------
