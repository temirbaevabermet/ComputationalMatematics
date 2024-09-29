program DarbuSum
    integer n, i
    real f_a, f_b, del_x, x
    real a, b , lower_sum, upper_sum, pi

    lower_sum = 0.0
    upper_sum = 0.0
    pi = 4.D0*DATAN(1.D0)
    a = pi
    b = (3*pi)/2
    
    print *, 'Enter the number of intervals:'
    read *, n

    del_x = (b - a) / real(n)

    do i = 0, n - 1
        x = a + i * del_x
        f_a = sin(x)
        f_b = sin(x + del_x)
        if(f_a>f_b) then
            lower_sum = lower_sum + f_b * del_x
            upper_sum = upper_sum + f_a * del_x
        else
            lower_sum = lower_sum + f_a * del_x
            upper_sum = upper_sum + f_b * del_x
        end if
    end do

    print *, 'Lower Darbu Sum: ', lower_sum
    print *, 'Upper Darbu Sum: ', upper_sum

end program DarbuSum