
      REAL, ALLOCATABLE  :: U(:,:)
      PRINT *,'Enter Sizes of Array'
      READ(*,*)NX,NY
      ALLOCATE(U(0:NX,0:NY),STAT=IERR)
      IF(IERR.NE.0)THEN
        PRINT *,'Error in U ALLOCATE'
        STOP
      ENDIF
      ITER=0
!
!  In initialize U
! 
      DO J=0,NY
        DO I=0,NX
          U(I,J)=0
        END DO
      END DO
      DX=1./REAL(NX)
      DY=1./REAL(NY)
      PI=4.*ATAN(1.)
      DO I=1,NX-1
        U(I,NY)=SIN(I*DX*PI)
      END DO
      CALL MATOUT(U,NX,NY)
      PRINT *,'Enter Number of Sweeps per I/O Print'
      READ(*,*)NITER
   10 PRint *,'Enter Number of IOSweeps, <0 to stop'
      READ(*,*)ILOOP
      IF(ILOOP.LT.1)GO TO 20
      CALL CPU_TIME(T0)
      PRINT*,'    Iter       Resid     T(.5,.5)   time'
      DO N=1,ILOOP
        DO M=1,NITER
          CALL GSR(U,NX,NY,RESMAX)
        END DO
        CALL CPU_TIME(T1)
        ITER=ITER+NITER
        WRITE(*, '(I8,G15.5,2F10.5)')ITER,RESMAX,U(NX/2,NY/2),T1-T0
        T0=T1
      END DO
      GO TO 10
   20 CONTINUE
      CALL MATOUT(U,NX,NY)
      STOP
      END


