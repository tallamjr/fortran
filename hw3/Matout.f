
      SUBROUTINE MATOUT(U,NX,NY)
      DIMENSION U(0:NX,0:NY)
      INTEGER I,J,NX,NY
      IS=1+NX/25
      DO J=NY,0,-IS
        WRITE(*,'(I4,50F5.2)')J,(U(I,J),I=0,NX,IS)
      END DO
      RETURN
      END


