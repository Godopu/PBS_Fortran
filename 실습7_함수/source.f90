!기본적인 함수의 개념과 INTENT(IN)의 소개
!program source
!    implicit none
!    PRINT * , add(5.0,2.0)
!    print * , sub(5.0,2.0)
!
!    contains
!    function add(x,y)   !더하기를 해주는 함수를 정의합니다.
!        implicit none
!        real , intent(in) :: x , y
!        real :: add
!
!        add = x + y
!
!    end function add
!
!    function sub(x,y)   !빼기를 해주는 함수를 정의합니다.
!
!        implicit none
!        real , intent(in) :: x , y !INTENT(IN)속성은 함수외부에서 값을 읽어오는 것을 뜻합니다.
!        real :: sub                !INTENT(IN)속성을 가진 변수는 함수 내부에서 값을 변경할 수 없습니다.
!
!        sub = x - y
!    end function sub
!
!end program source
!결과화면
!   7.00000000
!   3.00000000

!INTENT(OUT)의 예제
!Function 내 INTENT(OUT)의 속성을 가진 변수는 외부로 값을 전달하는 변수라는 의미가 있습니다.
!PROGRAM SOURCE
!    IMPLICIT NONE
!    INTEGER :: X , RESULT
!
!    RESULT = TempFunction(X)    !y의 인자로 전달되는 변수이며, y로부터 값을 받아옵니다.
!    PRINT * , X
!
!    CONTAINS
!    FUNCTION TempFunction(y)
!        IMPLICIT NONE
!        INTEGER , INTENT(OUT) :: y  !y는 외부에 값을 전달하는 변수입니다.
!        INTEGER :: TempFunction
!        y = 20  !y에 값을 입력하며, 함수가 끝나면 함수의 인자로 들어온 x에 20이 입력됩니다.
!
!        TempFunction = 10   !함수 차제가 반환하는 값입니다.
!    END FUNCTION TempFunction
!END PROGRAM SOURCE
!출력화면
!          20

!실습문제
program source
    implicit none
    REAL :: A,B,DeltaX,X,Sum
    Integer :: N , I

    PRINT * , "X의 시작, 끝, 간격을 입력하시오 : "

    READ * , A , B , N

    DeltaX = (B-A) / REAL(N)        !A~B의 간격을 N등분 합니다.
    X = A
    Sum = 0.0

    I = 0
    DO  I=1,N,1
        Sum = Sum + F(A+DeltaX*I)*DeltaX
    END DO

    PRINT '(1X, I4, "개의 구분구적값 = " , F10.5)' , N , SUM   !구한 값을 출력합니다.

    CONTAINS

    REAL FUNCTION F(X)

!        REAL :: F
        REAL , INTENT(IN) :: X      !x는 외부로 부터 값을 입력받기 위해 사용되는 변수

        F = X**2 + 1.0

    END FUNCTION F
end program source
!출력화면
! X의 시작, 끝, 간격을 입력하시오 :
!0 3 1000
! 1000개의 구분구적값 =   12.01351































