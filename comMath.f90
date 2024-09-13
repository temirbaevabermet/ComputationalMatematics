program machine_infinity
    implicit none
    real :: I, test_val

    I = 1.0

    do 
        if(2.0 * I <= I)then
            exit
        end if
            test_val=I
            I = I * 2.0
    end do

    I = I / 2.0

    print *, 'Machine infinity: ', test_val

end program machine_infinity