      implicit complex(x)
      complex :: croot1, croot2
   10 print *,'Enter the 3 coeffiecients of the Quadratic equation.'
      print *,'A*X*X+B*x+C=0 in the order A (===0 to stop!),B & C'
      read  *,A,B,C
      if(A.EQ.0.0)stop
      D=B*B-4*A*C
      x=(-B+DR)/(2*A)
      if(D)20,30,40
   20 DR=sqrt(-D)
      print *,'Complex Roots'
      croot1 = (-b + sqrt(cmplx(D))) / (2*A)
      croot2 = conjg(croot1)
      print *, real(croot1)
      print *, aimag(croot1)
      print *, croot1
      print *, croot2
      go to 10
   30 print *,'Repeated roots, R1=R2=',-B/(2*A)
      go to 10
   40 DR=sqrt(D)
      print *,'Roots = ',(-B+DR)/(2*A), (-B-DR)/(2*A)
      go to 10
      end

