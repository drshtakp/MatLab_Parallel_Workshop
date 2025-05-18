function [t, Y] = hybrid_parallelism(N)

t0 = tic;
% Multiple workers, one per core
parfor idx = 1:N
    % Each worker with multiple threads
    Y{idx} = fft(rand(idx));
end
t = toc(t0);

end
