
      subroutine add_2_ints( i1, i2, isum )
cf2py        integer,INTENT(IN)::  i1
cf2py        integer,INTENT(IN):: i2
cf2py        integer,INTENT(OUT):: isum
      isum = i1 + i2
 100  format (a,i0,a,i0,a,i0)
      print 100,'FORTRAN says the sum of ',i1,' and ',i2,' is: ',isum
      
      return
      end

