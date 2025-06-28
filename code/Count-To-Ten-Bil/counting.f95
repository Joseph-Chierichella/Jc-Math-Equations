
!In order to compile this you must have gfortran
! gfortran counting.f95 -o <whatever you want>

! This program will count to ten, than give you the score in milliseconds
! You can finally find out if you have a better computer than your friends

PROGRAM counting
  IMPLICIT NONE
  INTEGER(KIND=8) :: i, x
  INTEGER :: start, finish, rate
  REAL :: elapsed_ms
  CHARACTER (LEN = 12) :: ms
  ms = "milliseconds"

  x = 10000000000_8
  i = 1

  CALL SYSTEM_CLOCK(COUNT_RATE = rate)
  CALL SYSTEM_CLOCK(COUNT = start)

  DO WHILE (i <= x)
    IF (i == x) THEN
      PRINT *, "Program is finished!"
    END IF
    i = i + 1
  END DO

  CALL SYSTEM_CLOCK(COUNT = finish)

  elapsed_ms = REAL(finish - start) / REAL(rate) * 1000.0
  PRINT *, "Time taken:", elapsed_ms, TRIM(ms)

END PROGRAM counting
