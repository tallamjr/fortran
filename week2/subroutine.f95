      subroutine quadroots(A2,A1,A0,Root1,Root2,NRealRoots)
      D=A1**2-4*A2*A0
      if(D)20,30,40
   20 DR=sqrt(-D)
      NRealRoots=0
      Root1=-A1/(2*A2)
      Root2=DR/(2*A2)
      return
   30 NRealRoots=1
      Root1=-A1/(2*A2)
      Root2=Root1
      return
   40 NRealRoots=2
      DR=sqrt(D)
      Root1=(-A1-DR)/(2*A2)
      Root2=(-A1+DR)/(2*A2)
      return
      end

