!두 직선 방적식의 계수 A,B,C,D,E,F 의 값을 읽는 프로그램을 작성하라

program source
    implicit none
    REAL A , B , C , D , E , F  !입력받은 값을 저장할 변수를 선언합니다.
                                !변수의 타입은 실수를 받을 것이기 때문에 REAL 또는 DOUBLE PRECISION으로 해줍니다.
    REAL SLOPE1 , SLOPE2 ;
    CHARACTER(LEN=50) RESULT ;  !결과를 저장할 변수 RESULT 선언 길이가 50인것에 주의할 것!!

    PRINT * , 'AX + BY = C 에서 A,B,C를 입력해 주세요(ex> 1 1 2)' !입력을 받기 위해 사용자에게 입력을 요구합니다.
    READ * , A , B , C     !입력을 받습니다.

    PRINT * , 'DX + EY = F 에서 D,E,F를 입력해 주세요(ex> 1 -1 2)' !입력을 받기 위해 사용자에게 입력을 요구합니다.
    READ * , D , E , F     !입력을 받습니다.

    !지금까지 입력을 받는 부분이였습니다.
    !앞으로 이어질 실습에서도 계속해서 사용될 PRINT 와 READ , WRITE는 꼭 외워두세요
    !PRINT * , "출력할 문자열"
    !READ * , 입력받을 변수 명
    !WRITE(*,*) "출력할 문자열"

    SLOPE1 = -A/B;  !두 직선의 기울기를 계산합니다.
    SLOPE2 = -D/E;

    IF(SLOPE1 == SLOPE2) THEN   !두 직선의 기울기가 같다면
        IF(A/D == B/E .AND. B/E == C/F) THEN !사실 (A/D == B/E) 이조건은 필요 없으나 .AND.를 보여주기 위해 넣었습니다.
            RESULT = '두 직선은 같습니다.'
        ELSE
            RESULT = '두 직선은 평행합니다.'
        END IF
    ELSE
        IF(SLOPE1 * SLOPE2 .EQ. -1) THEN!.EQ. 와  == 는 같은 뜻입니다.
            RESULT = '두 직선은 수직입니다.'
        ELSE
            RESULT = '두 직선은 교차합니다.'
        END IF
    END IF  !IF 가 시작하면 END IF는 항상 있어야 합니다. 꼭 기억해두세요!!

    PRINT * , RESULT
end program source
