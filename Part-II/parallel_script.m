% parallel_script

parfor ii = 1:x
    y(ii) = rand
end
temp = rand(1,x)
who

%#ok<*NOPTS>