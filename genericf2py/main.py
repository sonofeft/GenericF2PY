#!/usr/bin/env python
# -*- coding: ascii -*-

r"""
GenericF2PY demostrates how to handle FORTRAN binaries in python modules.

GenericF2PY has the following goals::

    *) support a variety of python distribtions (2 & 3)
    *) support both 32 & 64 bit installations
    *) support a variety of platforms Windows/Linux/MaxOS/etc.
    *) provide binaries with "pip install" for major platforms and versions
    *) provide make support where binaries are not given.

GenericF2PY
Copyright (C) 2019  Applied Python

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

-----------------------

"""
import sys
import os
here = os.path.abspath(os.path.dirname(__file__))

# # python >=3.8 needs to be given permission to import DLL files.
from genericf2py.find_mingw_lib import add_mingw_lib
add_mingw_lib()


# for multi-file projects see LICENSE file for authorship info
# for single file projects, insert following information
__author__ = 'Charlie Taylor'
__copyright__ = 'Copyright (c) 2019 Charlie Taylor'
__license__ = 'GPL-3'
exec( open(os.path.join( here,'_version.py' )).read() )  # creates local __version__ variable
__email__ = "cet@appliedpython.com"
__status__ = "4 - Beta" # "3 - Alpha", "4 - Beta", "5 - Production/Stable"

#
# import statements here. (built-in first, then 3rd party, then yours)
from genericf2py.fprog import add_2_ints, offset_int
#
# Code goes below.
# Adjust docstrings to suite your taste/requirements.
#

def main(i1=3, i2=19):
    """
    GenericF2PY demostrates how to handle FORTRAN binaries in python modules.
    
    This function calls the test binary FORTRAN module and reports success or failure.
    """
    print('_'*55)
    print('Python Version:',sys.version,'  GenericF2PY Version:', __version__)    
    isum = add_2_ints( i1, i2 )
    print('   Py<--FORTRAN: %i + %i = %i'%(i1, i2, isum) )
    
    ioffset = offset_int( i1 )
    print('   Py<--Offsets: %i by NNN = %i'%(i1, ioffset) )
    
    return isum


if __name__=='__main__':
    import sys
    
    if len(sys.argv)==3:
        i1 = int( sys.argv[1] )
        i2 = int( sys.argv[2] )
        main( i1=i1, i2=i2 )
    else:
        main()

