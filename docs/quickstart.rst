
.. quickstart

QuickStart
==========

Install GenericF2PY
-------------------

The easiest way to install GenericF2PY is::

    pip install genericf2py
    
        OR on Linux
    sudo pip install genericf2py
        OR perhaps
    pip install --user genericf2py

In case of error, see :ref:`internal_pip_error`

.. _internal_source_install:

Installation From Source
------------------------

Much less common, but if installing from source, then
the best way to install genericf2py is still ``pip``.

After navigating to the directory holding GenericF2PY source code, do the following::

    cd full/path/to/genericf2py
    pip install -e .
    
        OR on Linux
    sudo pip install -e .
        OR perhaps
    pip install --user -e .
    
This will execute the local ``setup.py`` file and insure that the pip-specific commands in ``setup.py`` are run.

Running GenericF2PY
-------------------

After installing with ``pip``, there will be a launch command line program called **genericf2py** or, on Windows, **genericf2py.exe**. From a terminal or command prompt window simply type::

    genericf2py

and GenericF2PY will start. If not, then there may be an issue with your system path.
The path for the genericf2py executable might be something like::

    /usr/local/bin/genericf2py             (if installed with sudo pip install -e .)
         or 
    /home/<user>/.local/bin/genericf2py    (if installed with pip install -e .)
         or 
    C:\Python27\Scripts\genericf2py.exe    (on Windows)

Make sure your system path includes the above path to **genericf2py**.


.. _internal_pip_error:

pip Error Messages
------------------

If you get an error message that ``pip`` is not found, see `<https://pip.pypa.io/en/latest/installing.html>`_ for full description of ``pip`` installation.

There might be issues with ``pip`` failing on Linux with a message like::


    InsecurePlatformWarning
            or    
    Cannot fetch index base URL https://pypi.python.org/simple/

Certain Python platforms (specifically, versions of Python earlier than 2.7.9) have the InsecurePlatformWarning. If you encounter this warning, it is strongly recommended you upgrade to a newer Python version, or that you use pyOpenSSL.    

Also ``pip`` may be mis-configured and point to the wrong PyPI repository.
You need to fix this global problem with ``pip`` just to make python usable on your system.


If you give up on upgrading python or fixing ``pip``, 
you might also try downloading the genericf2py source package 
(and all dependency source packages)
from PyPI and installing from source as shown above at :ref:`internal_source_install`


