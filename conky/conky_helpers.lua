-- Conky helper functions to allow dynamic adaptation of the conky_rc to the
-- current environment. For instance, dynamically get the number of CPUs and
-- return the cpubars
do
    function conky_cpu_bars()
        -- Will return something like:
        -- CPU1  ${cpu cpu1}% ${cpubar cpu1}
        -- CPU2  ${cpu cpu2}% ${cpubar cpu2}
        -- CPU3  ${cpu cpu3}% ${cpubar cpu3}
        -- CPU4  ${cpu cpu4}% ${cpubar cpu4}
        local f = assert(io.popen('nproc', 'r'))
        local s = assert(f:read('*a'))
        f:close()
        s = string.gsub(s, '^%s+', '')
        s = string.gsub(s, '%s+$', '')
        s = string.gsub(s, '[\n\r]+', '')
        num_cpus = tonumber (s)
        output = ""
        for cpu_i = 1, num_cpus, 1 do
            output = output .. "CPU" .. cpu_i .. "  ${cpu cpu" .. cpu_i .. "}% ${cpubar cpu" .. cpu_i .. "}\n"
        end
        return output
    end
end
