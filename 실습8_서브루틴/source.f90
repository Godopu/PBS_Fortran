!program source
!    implicit none
!    INTEGER :: MAXIM
!    INTEGER :: I = 10 , J = 20
!
!    CALL MAX(I,J,MAXIM)
!    PRINT * , I , J , MAXIM
!    STOP
!end program source
!
!SUBROUTINE MAX(M , N , LARGE)
!
!    IF(M.GE.N) THEN
!        LARGE = M
!    ELSE
!        LARGE = N
!    END IF
!
!    PRINT * , 'HELLO WORLD'
!    M = 30
!    N = 30
!    RETURN
!
!END

!MODULE FactorialModule
!    IMPLICIT NONE
!    CONTAINS
!
!    INTEGER FUNCTION Factorial(n)
!    IMPLICIT NONE
!    INTEGER , INTENT(IN) :: n
!    INTEGER :: I , F
!
!    F = 1
!    DO I=1,n,1
!        F = F*I
!    END DO
!
!    Factorial = F
!    END FUNCTION Factorial
!
!    INTEGER FUNCTION Combinatorial(n , r)
!    IMPLICIT NONE
!    INTEGER , INTENT(IN) :: n,r
!
!    Combinatorial = Factorial(n) / (Factorial(r) * Factorial(n-r))
!    END FUNCTION Combinatorial
!
!END MODULE FactorialModule
!
!PROGRAM ComputeFactorial
!    USE FactorialModule
!
!    IMPLICIT NONE
!    INTEGER :: N , R
!    READ(*,*) N , R
!    WRITE(*,*) Factorial(N)
!    WRITE(*,*) Combinatorial(N,R)
!END PROGRAM ComputeFactorial

!MODULE MyTrigonometricFunctions
!    IMPLICIT NONE
!    REAL , PARAMETER :: PI = 3.1415926
!    REAL , PARAMETER :: Degree180 = 180.0
!    REAL , PARAMETER :: R_to_D = Degree180/PI
!    REAL , PARAMETER :: D_to_R = PI/Degree180
!
!    CONTAINS
!    REAL FUNCTION DegreeToRadian(Degree)
!        IMPLICIT NONE
!        REAL , INTENT(IN) :: Degree
!        DegreeToRadian = Degree * D_to_R
!    END FUNCTION
!
!    REAL FUNCTION MySIN(x)
!
!        IMPLICIT NONE
!        REAL , INTENT(IN) :: x
!        MySIN = SIN(DegreeToRadian(x))
!
!    END FUNCTION MySIN
!END MODULE MyTrigonometricFunctions
!
!PROGRAM source
!    USE MyTrigonometricFunctions
!    IMPLICIT NONE
!    REAL :: Begin = -180.0
!    REAL :: Final = 180.0
!    REAL :: Step = 10.0
!    REAL :: x
!    x = Begin
!
!    Do
!        IF(x>Final) EXIT
!        WRITE(*,*) x , MySIN(x) , SIN(PI)
!        x = x + Step
!    END DO
!
!END PROGRAM source

program source
    USE Integrand_Function ,ONLY : Integrand , PI
    implicit none
    REAL :: A, B
    INTEGER :: Number_of_subintervals

    write(*,'(1X , A)' , ADVANCE = "NO") "x의 시작, 끝, 간격을 입력하시오: "
    READ * , A,B,Number_of_Subintervals

    CALL Integrate(Integrand , A , B , Number_of_Subintervals)

    CONTAINS
    SUBROUTINE Integrate(F,A,B,N)
        implicit none
        REAL , EXTERNAL:: F
        REAL :: SumValue = 0 , interval = 0
        REAL , INTENT(IN) :: A , B
        INTEGER , INTENT(IN) :: N
        INTEGER :: I

        interval = REAL(B-A) / N
        DO I = 1 , N , 1
            sumValue = sumValue + interval * F(A + interval*(I-1))
        END DO

        PRINT 10 , Number_of_Subintervals , SumValue

        10 FORMAT(I5 , "구분구적의 갯수를 이용한 적분 값은 " , F10.5)

        RETURN
    END SUBROUTINE Integrate
end program source

MODULE Integrand_Function
    REAL , PARAMETER:: PI = 3.1415926
    CONTAINS
    FUNCTION Integrand(X)

        REAL :: Integrand
        REAL , INTENT(IN) :: X

        Integrand = X**2

    END FUNCTION Integrand
END MODULE Integrand_Function





















