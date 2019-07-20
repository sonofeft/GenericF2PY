c ...........................................

      subroutine add_2_ints( i1, i2, isum )
cf2py        integer,INTENT(IN)::  i1
cf2py        integer,INTENT(IN):: i2
cf2py        integer,INTENT(OUT):: isum
      isum = i1 + i2
 100  format (a,i0,a,i0,a,i0)
      write(*, 100)'   FORTRAN says: ',i1,' + ',i2,' = ',isum
      
      return
      end
c ...........................................

      subroutine offset_int( i, ioffset )
cf2py        integer,INTENT(IN)::  i
cf2py        integer,INTENT(OUT):: ioffset
      INCLUDE 'fprog.inc'
      
      ioffset = i + Noffset
 100  format (a,i0,a,i0,a,i0)
      write(*, 100)'   FTN  OFFSETS: ',i,' by ',Noffset,' = ',ioffset
      
      return
      end

