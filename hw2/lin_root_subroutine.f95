      subroutine lin_root(A,B,R,IR1)
   10 print *,'Enter the 2 coeffiecients of the linear equation'
      print *,'A*R + B = 0 in the order A & B'
      read  *,A,B
      R=(B*(-1))/A
      if(A.EQ.0.0)then
          print *,' X = 0 since A = 0'
      else
          print *,' X = ', x
      endif
      go to 10
      end
      ! if(R)20,30,40
