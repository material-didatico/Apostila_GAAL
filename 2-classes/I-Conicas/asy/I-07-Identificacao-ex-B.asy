//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -4;
real xmax =  6;
real ymin = -2;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real a = 3;
real b = 2; 
pair CC = ( 1, 2 );
pair PP = CC + (a, 0);
pair QQ = CC - (a, 0);
pair RR = CC + (0, b);
pair SS = CC - (0, b);

draw( shift(CC) * scale(a, b) * unitcircle, p_curve );

dot( CC, p_dot );
dot( PP, p_dot );
dot( QQ, p_dot );
dot( RR, p_dot );
dot( SS, p_dot );

label("$(" + string(CC.x) + ", " + string(CC.y) + ")$", CC, N,  p_curve );
label("$(" + string(PP.x) + ", " + string(PP.y) + ")$", PP, NE, p_curve );
label("$(" + string(QQ.x) + ", " + string(QQ.y) + ")$", QQ, NW, p_curve );
label("$(" + string(RR.x) + ", " + string(RR.y) + ")$", RR, N,  p_curve );
label("$(" + string(SS.x) + ", " + string(SS.y) + ")$", SS, N,  p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
