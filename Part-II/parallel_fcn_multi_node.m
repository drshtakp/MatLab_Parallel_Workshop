function [time, A] = parallel_fcn_multi_node(sims)

if isempty(gcp("nocreate"))
	c = parcluster("Negishi");
	c.AdditionalProperties.ProcsPerNode = 20;
	c.AdditionalProperties.WallTime = "00:15:00";
	c.parpool(40);
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
