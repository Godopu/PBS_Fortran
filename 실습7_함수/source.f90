!�⺻���� �Լ��� ����� INTENT(IN)�� �Ұ�
!program source
!    implicit none
!    PRINT * , add(5.0,2.0)
!    print * , sub(5.0,2.0)
!
!    contains
!    function add(x,y)   !���ϱ⸦ ���ִ� �Լ��� �����մϴ�.
!        implicit none
!        real , intent(in) :: x , y
!        real :: add
!
!        add = x + y
!
!    end function add
!
!    function sub(x,y)   !���⸦ ���ִ� �Լ��� �����մϴ�.
!
!        implicit none
!        real , intent(in) :: x , y !INTENT(IN)�Ӽ��� �Լ��ܺο��� ���� �о���� ���� ���մϴ�.
!        real :: sub                !INTENT(IN)�Ӽ��� ���� ������ �Լ� ���ο��� ���� ������ �� �����ϴ�.
!
!        sub = x - y
!    end function sub
!
!end program source
!���ȭ��
!   7.00000000
!   3.00000000

!INTENT(OUT)�� ����
!Function �� INTENT(OUT)�� �Ӽ��� ���� ������ �ܺη� ���� �����ϴ� ������� �ǹ̰� �ֽ��ϴ�.
!PROGRAM SOURCE
!    IMPLICIT NONE
!    INTEGER :: X , RESULT
!
!    RESULT = TempFunction(X)    !y�� ���ڷ� ���޵Ǵ� �����̸�, y�κ��� ���� �޾ƿɴϴ�.
!    PRINT * , X
!
!    CONTAINS
!    FUNCTION TempFunction(y)
!        IMPLICIT NONE
!        INTEGER , INTENT(OUT) :: y  !y�� �ܺο� ���� �����ϴ� �����Դϴ�.
!        INTEGER :: TempFunction
!        y = 20  !y�� ���� �Է��ϸ�, �Լ��� ������ �Լ��� ���ڷ� ���� x�� 20�� �Էµ˴ϴ�.
!
!        TempFunction = 10   !�Լ� ������ ��ȯ�ϴ� ���Դϴ�.
!    END FUNCTION TempFunction
!END PROGRAM SOURCE
!���ȭ��
!          20

!�ǽ�����
program source
    implicit none
    REAL :: A,B,DeltaX,X,Sum
    Integer :: N , I

    PRINT * , "X�� ����, ��, ������ �Է��Ͻÿ� : "

    READ * , A , B , N

    DeltaX = (B-A) / REAL(N)        !A~B�� ������ N��� �մϴ�.
    X = A
    Sum = 0.0

    I = 0
    DO  I=1,N,1
        Sum = Sum + F(A+DeltaX*I)*DeltaX
    END DO

    PRINT '(1X, I4, "���� ���б����� = " , F10.5)' , N , SUM   !���� ���� ����մϴ�.

    CONTAINS

    REAL FUNCTION F(X)

!        REAL :: F
        REAL , INTENT(IN) :: X      !x�� �ܺη� ���� ���� �Է¹ޱ� ���� ���Ǵ� ����

        F = X**2 + 1.0

    END FUNCTION F
end program source
!���ȭ��
! X�� ����, ��, ������ �Է��Ͻÿ� :
!0 3 1000
! 1000���� ���б����� =   12.01351































