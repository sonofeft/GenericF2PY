

.. image:: https://travis-ci.org/sonofeft/GenericF2PY.svg?branch=master
        
.. image:: https://img.shields.io/pypi/pyversions/GenericF2PY.svg

.. image:: https://img.shields.io/pypi/l/GenericF2PY.svg


**Genericf2Py Demostrates How To Handle Fortran Binaries In Python Modules.**

See the Code at: `<https://github.com/sonofeft/GenericF2PY>`_

See the Docs at: `<http://genericf2py.readthedocs.org/en/latest/>`_

See PyPI page at:`<https://pypi.python.org/pypi/genericf2py>`_


Overview
--------

GenericF2PY focuses on the use of  `f2py <https://numpy.org/devdocs/f2py/python-usage.html>`_
for integrating FORTRAN modules into python `PyPI <https://pypi.org/>`_ projects.


GenericF2PY has the following goals:

- Support a variety of platforms Windows/Linux/MacOS/etc.
- Support a variety of python distributions (2 & 3).
- Support both 32 & 64 bit installations.

Based on my experience developing GenericF2PY, I believe the best way to achieve the above goals is:

* Distribute only **source code** (Python & FORTRAN).
* Provide guidance for setting up `f2py <https://numpy.org/devdocs/f2py/python-usage.html>`_ on the user's platform.
* Recommend users install with **"pip install <packagename>"**.
* Provide guidance for correcting any error messages.

Binary Distributions
--------------------

When binary distributions install properly, they are the most convenient approach for users... **HOWEVER**...

When binary distributions fail, they can be confounding for many users and greatly impede
or even preclude the use of your project for those users.

The sheer difficulty of maintaining binaries for all possible systems can become overwhelming.

Binary distributions can fail for a variety of reasons:

- Compiled against wrong version of `numpy <https://numpy.org/>`_
- Missing or wrong version of system libraries
- Environment variable problems (PATH, LIBRARY_PATH, CC, GCC, etc.)
- Security Restrictions
- Unknown Unknowns


It is for these reasons, that I recommend distributing **source code only**.

I'm weighing the user's difficulty of installing `f2py <https://numpy.org/devdocs/f2py/python-usage.html>`_ 
against the user's difficulty of debugging your potentially failed binary distribution and deciding that 
installing `f2py <https://numpy.org/devdocs/f2py/python-usage.html>`_ is the smaller burden.
Also, the user can Google `f2py <https://numpy.org/devdocs/f2py/python-usage.html>`_ and find answers.
You will be the user's only source of information on your binaries for all possible systems.
    
If you want to make binary distributions available, it might be best to either:

- create binary wheels in a Github **pip-wheels** directory
- provide an option to install from source code.

Users can be directed to that Github **pip-wheels** directory or given
source-install instructions as required.



