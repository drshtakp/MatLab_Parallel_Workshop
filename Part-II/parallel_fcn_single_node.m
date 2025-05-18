function [time, A] = parallel_fcn_single_node(sims)

if isempty(gcp("nocreate"))
	parpool("Processes", maxNumCompThreads);
end

disp("Start sim")

A = nan(sims,1);
t0 = tic;
parfor idx = 1:sims
    A(idx) = idx;
    pause(0.25)
    idx;
end
time = toc(t0);

disp("Finished")

save RESULTS A

end
