!�� ���� �������� ��� A,B,C,D,E,F �� ���� �д� ���α׷��� �ۼ��϶�

program source
    implicit none
    REAL A , B , C , D , E , F  !�Է¹��� ���� ������ ������ �����մϴ�.
                                !������ Ÿ���� �Ǽ��� ���� ���̱� ������ REAL �Ǵ� DOUBLE PRECISION���� ���ݴϴ�.
    REAL SLOPE1 , SLOPE2 ;
    CHARACTER(LEN=50) RESULT ;  !����� ������ ���� RESULT ���� ���̰� 50�ΰͿ� ������ ��!!

    PRINT * , 'AX + BY = C ���� A,B,C�� �Է��� �ּ���(ex> 1 1 2)' !�Է��� �ޱ� ���� ����ڿ��� �Է��� �䱸�մϴ�.
    READ * , A , B , C     !�Է��� �޽��ϴ�.

    PRINT * , 'DX + EY = F ���� D,E,F�� �Է��� �ּ���(ex> 1 -1 2)' !�Է��� �ޱ� ���� ����ڿ��� �Է��� �䱸�մϴ�.
    READ * , D , E , F     !�Է��� �޽��ϴ�.

    !���ݱ��� �Է��� �޴� �κ��̿����ϴ�.
    !������ �̾��� �ǽ������� ����ؼ� ���� PRINT �� READ , WRITE�� �� �ܿ��μ���
    !PRINT * , "����� ���ڿ�"
    !READ * , �Է¹��� ���� ��
    !WRITE(*,*) "����� ���ڿ�"

    SLOPE1 = -A/B;  !�� ������ ���⸦ ����մϴ�.
    SLOPE2 = -D/E;

    IF(SLOPE1 == SLOPE2) THEN   !�� ������ ���Ⱑ ���ٸ�
        IF(A/D == B/E .AND. B/E == C/F) THEN !��� (A/D == B/E) �������� �ʿ� ������ .AND.�� �����ֱ� ���� �־����ϴ�.
            RESULT = '�� ������ �����ϴ�.'
        ELSE
            RESULT = '�� ������ �����մϴ�.'
        END IF
    ELSE
        IF(SLOPE1 * SLOPE2 .EQ. -1) THEN!.EQ. ��  == �� ���� ���Դϴ�.
            RESULT = '�� ������ �����Դϴ�.'
        ELSE
            RESULT = '�� ������ �����մϴ�.'
        END IF
    END IF  !IF �� �����ϸ� END IF�� �׻� �־�� �մϴ�. �� ����صμ���!!

    PRINT * , RESULT
end program source
