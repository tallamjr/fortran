   10 print *,'Enter the 3 coeffiecents of the Quadratic equation'
      print *, 'A*x*x+B*x+C=0 in the order A (==0 to stop!), B & C'
      read *, A, B, C
      if(A.EQ.0.0)stop
      call quadroots(A,B,C,R1,R2,NRoots)
      select case(NRoots)
      case (0)
          print *, 'Complex Roots = ', R1, '+_i*', R2
      case (1)
          print *, 'Repeated Roots, R1=R2=', R1
      case (2)
          print *, 'Two Real Roots = ', R1, R2
      end select
      go to 10
      end
