//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -5;
real xmax =  9;
real ymin = -6;
real ymax =  4;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen p_curve = pens[0];
pen p_dot   = pens[0] + 5pt;

//-----------------------------------------------------------------------------

real a = 4;
real b = 3; 
pair CC = ( 2, -1 );
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

label("$(" + string(CC.x) + ", " + string(CC.y) + ")$", CC, S,  p_curve );
label("$(" + string(PP.x) + ", " + string(PP.y) + ")$", PP, SE, p_curve );
label("$(" + string(QQ.x) + ", " + string(QQ.y) + ")$", QQ, SW, p_curve );
label("$(" + string(RR.x) + ", " + string(RR.y) + ")$", RR, N,  p_curve );
label("$(" + string(SS.x) + ", " + string(SS.y) + ")$", SS, S,  p_curve );

clip_to_axis();

//-----------------------------------------------------------------------------
