      real :: root1, root2, horizon_distance, earth_radius
   10 print *,'Please a horizon distance in meters'
      print *,'Enter d (===0 to stop!)'
      read  *,horizon_distance
      if(horizon_distance.EQ.0.0)stop

      earth_radius = 6350000    ! Earth radius in meters
      horizon_distance = -(horizon_distance**2)
      B=(2*earth_radius)
      D=B*B-4*horizon_distance

      if(B.GT.0.0)then
          root1=(-B-sqrt(cmplx(D)))/(2)
          root2=horizon_distance/(root1)
          print *,'Height+++ = ', root1
          print *,'Height = ', root2
      else
          root1=(-B+sqrt(cmplx(D)))/(2)
          root2=earth_radius/(root1)
          print *,'Height--- = ', root1
          print *,'Height = ', root2
      endif
      go to 10
      end
