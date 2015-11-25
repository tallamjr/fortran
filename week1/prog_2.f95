   10 PRINT *,'Enter a Temp. in Cent. (<-273.15 to stop)'
      READ *,Cent
      IF(Cent.LT.-273.15)STOP
      Fahr=32+1.8*Cent
      PRINT *,'A' ,Cent, '     Centigrade temperature is ', &
        Fahr,' Fahrenheit'
      GO TO 10
      END
