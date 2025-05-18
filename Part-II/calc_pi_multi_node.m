function calc_pi_multi_node

if isempty(gcp("nocreate"))
    p = parpool("Negishi",40);
end

% Range from 0 to 1, divided by number of workers
bounds  = linspace(0,1,p.NumWorkers+1);
lbounds = bounds(1:end-1);
ubounds = bounds(2:end);

parfor idx = 1:p.NumWorkers
    a = lbounds(idx);
    b = ubounds(idx);
    myIntegral(idx) = integral(@quadpi,a,b);
end

approx = sum(myIntegral);
fprintf('pi           : %.18f\n', pi)
fprintf('Approximation: %.18f\n', approx)
fprintf('Error        : %g\n',    abs(pi - approx))

end

function y = quadpi(x)
y = 4./(1 + x.^2);

end
