program machine_zero
    implicit none
    real :: Z, test_val

    Z = 1.0

    do
        if(2.0 * Z <= Z) then
            exit
        
        end if
            test_val=Z
            Z = Z / 2.0
    end do

    Z = Z * 2.0

    print *, 'Machine zero: ', test_val

end program machine_zero