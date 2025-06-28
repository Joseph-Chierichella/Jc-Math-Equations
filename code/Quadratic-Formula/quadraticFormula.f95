
!In order to compile this you must have gfortran
! gfortran quadraticFormula.f95 -o <whatever you want>

! Your input should be in this format -->  a b c
! For example, you input could be     -->  1 -3 2

PROGRAM quadraticFormula
        IMPLICIT NONE
        DOUBLE PRECISION :: a, b, c
        DOUBLE PRECISION :: root1, root2

        PRINT *, "Enter coefficients a, b, and c:"
        READ *, a, b, c

        root1 = (-b + SQRT(b**2 - 4.0d0*a*c)) / (2.0d0*a)
        root2 = (-b - SQRT(b**2 - 4.0d0*a*c)) / (2.0d0*a)

        PRINT *, "Root 1 =" , root1
        PRINT *, "Root 2 =" , root2
END PROGRAM quadraticFormula

