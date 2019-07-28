
.. userinstructions

.. _link_userinstructions:

User Instructions
=================

All platforms need to be set up to compile the FORTRAN code in the source distribution.

I recommend that all platforms use `gfortran <https://www.gnu.org/software/gcc/fortran/>`_ 
, even Windows, in order to minimize the incompatibilities between different FORTRAN compilers.

Install Numpy
-------------

In addition, because `f2py <https://numpy.org/devdocs/f2py/python-usage.html>`_
is part of the `numpy <https://numpy.org/>`_ package,
all platforms will need `numpy <https://numpy.org/>`_ installed.

Therefore, the first user instruction is the command::
    
    pip install numpy
    
    OR perhaps...
    
    pip install --upgrade numpy

Some Linux systems may require::

    sudo pip install numpy


Install GFORTRAN
----------------

Both developers and users need to install `gfortran <https://www.gnu.org/software/gcc/fortran/>`_ 
and each operating system has its own approach.

Click: :ref:`link_installgfortran` to see install instructions for a few platforms that I have tested.


Install Project
---------------

Once `numpy <https://numpy.org/>`_ and `gfortran <https://www.gnu.org/software/gcc/fortran/>`_
are available, the project can be installed with::

    pip install genericf2py
    
      ... OR for your project ...
      
    pip install <your project name>

and the project will be downloaded from `PyPI <https://pypi.org/>`_, 
the FORTRAN will be compiled and the project installed.

Upgrade Project
---------------

Once `numpy <https://numpy.org/>`_ and `gfortran <https://www.gnu.org/software/gcc/fortran/>`_ are installed, 
a new project version can be installed with::

    pip install --upgrade genericf2py
    
      ... OR for your project ...
      
    pip install --upgrade <your project name>
