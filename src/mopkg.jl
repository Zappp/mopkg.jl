module mopkg

include("svopt.jl")

function cubic_optimize(f, x0k; eps=0.000001, sig=1, method::SVOptMethod=SVInterpol_DSC())
    optimizer = method
    optimizer(f, x0k; e=eps, s=sig)
end

export cubic_optimize, SVOptMethod

end # module
