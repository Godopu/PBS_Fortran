!program source
!    INTEGER I , N , sumValue        !앞으로 사용할 변수들을 선언합니다.
!
!    !프로그램은 크게 입력 , 계산 , 출력 부분으로 나뉘어진다고 보시면 됩니다.
!    !가장 쉬운 예는 계산기입니다.
!    !계산기는 연산자(+ , - , * , / 등) 와 숫자를 입력하면 계산을 해서 결과 값을 출력해줍니다.
!
!    !입력 부분
!    PRINT * , "Enter a integer number : "   !정수를 입력하라는 프롬프트(사용자에게 보내는 메시지)를 출력합니다.
!    READ * , N      !사용자에게서 정수 1개를 입력받습니다.
!
!    !종종 초기화를 왜 하는지 모르는 분들을 위해 테스트를 해보겠습니다.
!    !처음에 변수를 만들었을 때 변수에는 쓰레기 값(의미 없는 값)이 들어가 있습니다.
!    PRINT * , '초기화 하기 전 sumValue의 값 : ' , sumValue
!    sumValue = 0    !가장 실수를 많이 하는 부분입니다.
!    PRINT * , '초기화 한 후 sumValue의 값 : ' , sumValue
!
!
!
!    !계산 부분
!    DO i=1,N,1      !i 에 1을 넣고 N 보다 작거나 같을 때까지 반복하는 반복문 입니다.
!                    !1번 반복 할 때 마다 i 는 1씩 증가합니다.
!        sumValue = sumValue + I         !반복되는 부분입니다.
!        PRINT * , I , '를 더했습니다.'      !반복되는 부분입니다.
!
!    END DO
!    !DO와 END DO 사이의 구문들이 반복되며 , DO 와 END DO 사이의 모든 구문이 1번 실행되면 i는 1씩 증가합니다.
!
!    !출력 부분
!    PRINT * , '모두 더한 값 : ' , sumValue
!end program source

!CYCLE 과 EXIT 의 사용법을 알아 보겠습니다.
!반복을 수행하다 보면 간혹 사용되어지는 명령어들이니 알아두시기 바랍니다.

!먼저  EXIT 에 대한 예제를 알아보겠습니다.
!사용자에게 1개의 숫자를 입력받아서 그 숫자가 100이면 반복문을 빠져나가는 예제를 작성해보겠습니다.
!PROGRAM SOURCE
!    IMPLICIT NONE
!    INTEGER :: NUM = 0      !사용자에게 입력받은 값을 저장할 변수 선언
!
!    DO
!        PRINT * , '숫자를 입력해주세요'  !값 입력
!        READ * , NUM
!
!        IF(NUM == 100) THEN         !계산
!           EXIT
!        END IF
!
!        !PRINT 문의 새로운 형태를 보여드리겠습니다.
!        !* 대신에 ' ' 으로 감싸진 문자열을 전달하면 해당 구문이 출력되며 , I4를 대신해서 NUM에 저장된 값이
!        !출력됩니다.
!        !I4 에서 I 는 정수를 나타내며 , 4는 4칸을 의미합니다.
!        !즉, NUM에 저장된 정수 값을 4칸에 걸쳐서 출력하라는 의미가 됩니다.
!        !만약 NUM 이 REAL 이였다면 , I 대신 F를 사용하시면 됩니다.
!        PRINT '("입력된 값 : " , I4)' , NUM     !출력
!
!    END DO
!
!    !마지막 출력
!    PRINT * , '100이 입력되었습니다. 프로그램을 종료합니다.'
!END PROGRAM SOURCE

!새로운 문제
! 1) 사용자로 부터 숫자 1개를 입력받아 N에 저장합니다.
! 2) X! <= N < (X+1)! 인 X를 구합니다.
!PROGRAM SOURCE
!    IMPLICIT NONE
!    INTEGER :: NUM = 0      !사용자에게 입력받은 값을 저장할 변수 선언
!    INTEGER :: X , FACTORIAL = 1
!
!    PRINT * , '숫자 1개를 입력하세요'
!    READ * , NUM
!
!    X = 1
!    DO
!        FACTORIAL = FACTORIAL * X
!        IF(FACTORIAL > NUM) THEN
!            EXIT    !이때 X!의 값은 NUM 보다 크다는 것을 주의하세요
!        END IF
!        PRINT '(I4 , "!의 값 : " , I6)' , X , FACTORIAL
!        X = X+1
!
!    END DO
!
!    !마지막 출력
!    PRINT * , 'X : ' , X-1  ! X! 은 NUM 보다 크므로 , X-1을 출력해야 합니다.
!END PROGRAM SOURCE


!Q> 1) 사용자에게 정수 1개를 입력받아 NUM에 저장합니다.
!   2) NUM보다 작거나 같은 정수중 홀수들의 합을 계산합니다.
!PROGRAM SOURCE
!    IMPLICIT NONE
!    INTEGER :: NUM !사용자에게 입력받은 값을 저장할 변수를 선언합니다.
!    INTEGER :: sumValue !홀수들의 합을 저장할 변수를 선언합니다.
!    INTEGER :: X   !반복에 사용될 변수를 선언합니다.
!
!    !입력 부분
!    PRINT * , 'Enter a Integer number'
!    READ * , NUM
!
!    !계산
!    sumValue = 0    !항상 초기화하는 것을 잊지마세요
!    DO X = 1 , NUM , 1
!        IF( MOD(X , 2) /= 1) THEN   !MOD(X,2)는 X를 2로 나눈 나머지 값을 의미합니다.
!            PRINT '(I4 , ": 짝 수")' , X
!            CYCLE
!        END IF
!        PRINT '(I4 , ": 홀 수")' , X
!        sumValue = sumValue + X
!    END DO
!
!    PRINT * , "홀 수들의 합 : " , sumValue
!END PROGRAM SOURCE

!Q> 이제 실습문제를 풀어보겠습니다.
!피보나치 수열을 출력해 봅니다.

PROGRAM SOURCE
    IMPLICIT NONE
    INTEGER :: E1 = 0 , E2 = 1 , E3 = 1
    INTEGER :: NUM  !사용자에게 입력받은 값을 저장할 변수 선언
    INTEGER :: I    !반복문에서 사용될 변수 선언
    !입력 부분
    PRINT * , 'Enter a integer number'
    READ * , NUM

    DO I=1,NUM,1
        PRINT * , E2

        !한 칸씩 앞으로 전진합니다.
        E1 = E2
        E2 = E3
        E3 = E1 + E2
    END DO

END PROGRAM SOURCE
