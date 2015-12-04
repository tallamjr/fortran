      SUBROUTINE GSR(U,NX,NY,R)
      DIMENSION  U(0:NX,0:NY)
      R=0
      DO J=1,NY-1
        DO I =1,NX-1
          RR=U(I,J+1)+U(I,J-1)+U(I+1,J)+U(I-1,J)-4*U(I,J)
          R=MAX(R,ABS(RR))
          U(I,J)=U(I,J) + 0.25*RR
        END DO
      END DO
      RETURN
      END


