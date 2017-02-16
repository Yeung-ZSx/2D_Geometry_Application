function P = linesegintersect(P1, P2, P3, P4)
P1 = P1';
P2 = P2';
P3 = P3';
P4 = P4';
% We assume P1, P2, P3 and P4 are column vectors
P1P2 = P2 - P1;
P3P4 = P4 - P3;
[a1 b1 c1] = line_par2imp_2d(P1P2(1), P1P2(2), P1(1), P1(2));
[a2 b2 c2] = line_par2imp_2d(P3P4(1), P3P4(2), P3(1), P3(2));
[ival, P] = lines_imp_int_2d (a1, b1, c1, a2, b2, c2);
P = P'; % convert from row vector to column vector
if ival ~= 1
P = [];
else
if dot(P - P1, P2 - P) < 0 || dot(P - P3, P4 - P) < 0
P = [];
end
end
end