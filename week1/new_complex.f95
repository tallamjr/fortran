      IMPLICIT NONE
      INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15)
      REAL(dp) :: a, b, c, e, discriminant, rroot1, rroot2
      COMPLEX(dp) :: croot1, croot2
   10 print *,'Enter the 3 coeffiecients of the Quadratic equation.'
      print *,'A*X*X+B*x+C=0 in the order A (===0 to stop!),B & C'
      read  *,A,B,C
      if(A.EQ.0.0)stop
      D=B*B-4*A*C
      if(D)20,30,40
   20 DR=sqrt(-D)
      print *,'Complex Roots'
      croot1 = (-b + SQRT(CMPLX(discriminant))) / (2.0_dp*a)
      croot2 = CONJG(croot1)
      go to 10
   30 print *,'Repeated roots, R1=R2=',-B/(2*A)
      go to 10
   40 DR=sqrt(D)
      print *,'Roots = ',(-B+DR)/(2*A), (-B-DR)/(2*A)
      go to 10
      end

