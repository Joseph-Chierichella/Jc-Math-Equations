
! Hello there user, you have permission to use my code for your personal and commercial projects!
! It wouldn't be bad to give me a little shoutout :D (will not be legally inforced)

SUBROUTINE absoluteValue(x, y) BIND(C, NAME = "absoluteValue")
    USE, INTRINSIC :: ISO_C_BINDING
    IMPLICIT NONE
    REAL(C_DOUBLE), INTENT(IN)  :: x
    REAL(C_DOUBLE), INTENT(OUT) :: y

    IF (x >= 0.0D0) THEN
      y = x
    ELSE
      y = -x
    END IF

END SUBROUTINE absoluteValue


