using mopkg, Test

@testset "mopkg" begin
    x, e, f = 10, 0.001, x -> x^4 + 3x^3 + x^2 + sin(x)
    @test inpol_dsc(f, x, e) == (-1.9712756210476652, -4.915216432826824)
    @test inpol_dsc(f, x, e) == (0, 0)

end

