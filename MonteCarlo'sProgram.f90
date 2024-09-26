program sinIntegral
    real a, b
    integer M 
    integer i
    real S, r, rN, pi
    
    M = 1000
    S = 0
    i = 0
    pi = 4.D0*DATAN(1.D0)
    a = pi
    b = (3*pi)/2
    
    do while (i < M)
        call random_number(rN)
        r = (b - a) * rN + a
        S = sin(r) + S 
        i = i + 1 
        print *, 'Iter №', i ,': S =',(b - a) * (S/i)
    end do
    
    print *, 'Last: Total Int = ',(b - a) * (S/M)

end program sinIntegral