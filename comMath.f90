program machine_epsilon
    implicit none
    real :: epsilon, test_val

    epsilon = 1.0

    do
        if (1.0 + epsilon <= 1.0) then
            exit
        end if
            epsilon=epsilon/2.0
    end do

    epsilon = epsilon * 2.0

    print *, 'Machine epsilon: ', epsilon
end program machine_epsilon