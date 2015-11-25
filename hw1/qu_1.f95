      real :: root1, root2
   10 print *,'Enter the 3 coeffiecients of the Quadratic equation.'
      print *,'A*X*X+B*x+C=0 in the order A (===0 to stop!),B & C'
      read  *,A,B,C
      if(A.EQ.0.0)stop
      D=B*B-4*A*C
      if(B.GT.0.0)then
          root1=(-B-sqrt(cmplx(D)))/(2*A)
          root2=C/(root1*A)
          print *,'Root 1+++ = ', root1
          print *,'Root 2 = ', root2
      else
          root1=(-B+sqrt(cmplx(D)))/(2*A)
          root2=C/(root1*A)
          print *,'Root 1--- = ', root1
          print *,'Root 2 = ', root2
      endif
      go to 10
      end
