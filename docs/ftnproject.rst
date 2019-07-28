
.. ftnproject


FORTRAN Module(s)
=================

GenericF2PY will act as an example of how to treat a `PyPI <https://pypi.org/>`_ 
project containing FORTRAN modules.

For your project, it would be very reasonable to start with a copy of the 
`GenericF2PY Github repository <https://github.com/sonofeft/GenericF2PY>`_
and change all occurrences of GenericF2PY to <your project name>, and replace
the simple **fprog.f** FORTRAN code with your FORTRAN code.

A simplified layout of GenericF2PY is shown below::

    GenericF2PY/
        docs/
            ...
        genericf2py/
            __init__.py
            main.py
            examples/
                example_1.py
            src/
                fprog.f
                fprog.inc
            tests/
                __init__.py
                test_main.py
        LICENSE.txt
        MANIFEST.in
        README.rst
        requirements.txt
        setup.cfg
        setup.py

Note that the FORTRAN source code is in the subdirectory **"GenericF2PY/genericf2py/src"**.

In GenericF2PY, there is both a FORTRAN source file (**fprog.f**) and a FORTRAN include file (**fprog.inc**).

SETUP.PY File
-------------

In order to compile the FORTRAN code when using **pip install**, the **setup.py** file should 
use the `numpy setup <https://docs.scipy.org/doc/numpy/reference/distutils.html>`_ 
(not the usual setuptools version of **setup**)

A `numpy Extension <https://numpy.org/devdocs/f2py/distutils.html>`_ object 
will be created to handle the FORTRAN source code.

.. code:: python

    # Use numpy to build the f2py fortran extension
    # --------------------------------    
    import setuptools
    from numpy.distutils.core import Extension, setup

A `numpy Extension <https://numpy.org/devdocs/f2py/distutils.html>`_ object 
should be created for each of the FORTRAN modules in your project.

.. code:: python

    ext_fprog = Extension(name = 'genericf2py.fprog',
                sources = ['genericf2py/src/fprog.f'])

After creating the `numpy Extension <https://numpy.org/devdocs/f2py/distutils.html>`_ object 
simply include it in the call to **setup** and the **setup.py** file is complete.

The example below is truncated... make the rest of the call to **setup** however you normally do it.

.. code:: python

    setup(
        ext_modules = [ext_fprog], # numpy Extension object created above.
        name='genericf2py',
        platforms = 'any',
        install_requires = ['numpy'],  # includes numpy + any other requirements

        version = __version__,
        description = 'GenericF2PY demostrates how to handle FORTRAN binaries in python modules.',
        long_description = long_description,
        
        # the rest of your normal setup call goes below...
        # ...
    )

Build & Upload
--------------

With the above accomplished, you simply need to build your project and upload it to `PyPI <https://pypi.org/>`_.

Build a source distribution with::

    python setup.py sdist

This will create a file like **genericf2py-0.1.15.tar.gz** in the **/dist** subdirectory.

You upload this to `PyPI <https://pypi.org/>`_ directly from the **/dist** subdirectory with the command::

    twine upload --skip-existing dist/*
    

User Experience
---------------

From this point, your users should be able to install your package like::

    pip install genericf2py

The FORTRAN module(s) will be compiled and made available to the project.

In order to achieve this, the user may need to do some setup, see: :ref:`link_userinstructions`.

    




