function [time, A] = parallel_example(iter)

if nargin==0
    iter = 8;
end

disp('Start sim')

A = nan(iter,1);
t0 = tic;
parfor idx = 1:iter
    A(idx) = idx;
    pause(.25)
end
time = toc(t0);

disp('Sim completed')

save RESULTS A

end
