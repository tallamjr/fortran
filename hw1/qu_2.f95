   10 print *,'Enter the 2 coeffiecients of the linear equation'
      print *,'A*X + B = 0 in the order A & B'
      read  *,A,B
      x=(B*(-1))/A
      if(A.EQ.0.0)then
          print *,' X = 0 since A = 0'
      else
          print *,' X = ', x
      endif
      go to 10
      end
