using mopkg, Test

@testset "mopkg" begin
    x, e, f = 10, 0.001, x -> x^4 + 3x^3 + x^2 + sin(x)
    @test inpol_dsc(f, x, e) == (-1.9712756210476652, -4.915216432826824)

    x, e, f = -3, 0.001, x -> x^4
    @test inpol_dsc(f, x, e) == (-1.4251309796413501e-5, 4.1249541317031936e-20)

end

