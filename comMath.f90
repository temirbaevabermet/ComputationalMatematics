program machine_epsilon
    implicit none
    real :: epsilon, test_val

    epsilon = 1.0

    do while (1.0 + epsilon > 1.0)
        test_val=epsilon
        epsilon = epsilon / 2.0
    end do

    epsilon = epsilon * 2.0

    print *, 'Machine epsilon: ', test_val

end program machine_epsilon