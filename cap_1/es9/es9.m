x=0; delta = 1/10;
while x ~= 1, x = x+delta, end

% the code is not working because the x will never be exactly "1". So it
% loops forever
