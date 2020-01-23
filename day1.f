
module thisPlanet
implicit none
	real, dimension (:,:,:), allocatable :: creatures
	character (len = 5), parameter :: theNameOfThisPlanet = "Earth"
	integer, parameter :: thisDay = 1
	
contains
	subroutine create_day1()
		print*, "Let there be code."
		print*, "Let there be bugs."
		real :: code, bugs
		code = 1
		bugs = -1
		allocate ( creatures(1,1,2) )
		creatures(1,1,1) = code
		print*, "Thus there was code. It returned", creatures(1,1,1)
		creatures(1,1,2) = bugs
		print*, "Thus there were bugs, It returned", creatures(1,1,2)
		deallocate (creatures)
	end subroutine create_day1
	
end module thisPlanet

! Create day 1 using Fortran
program creation_day1
use thisPlanet
implicit none
	call create_day1()
end program creation_day1
