program machine_epsilon
    implicit none
    real (kind=8) :: epsilon, test_val

    epsilon = 1.0_8

    do while (1.0_8 + epsilon > 1.0_8)
        test_val=epsilon
        epsilon = epsilon / 2.0_8
    end do

    epsilon = epsilon * 2.0_8

    print *, 'Machine epsilon: ', test_val

end program machine_epsilon