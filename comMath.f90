program machine_epsilon
    implicit none
    real (kind=8) :: epsilon, test_val

    epsilon = 1.0_8

    do
        if (1.0_8 + epsilon <= 1.0_8) then
            exit
        end if
            epsilon = epsilon / 2.0_8
    end do

    epsilon = epsilon * 2.0_8

    print *, 'Machine epsilon: ', epsilon
end program machine_epsilon