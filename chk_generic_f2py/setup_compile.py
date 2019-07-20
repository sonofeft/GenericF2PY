
from numpy.distutils.core import Extension

ext_hi_ftn = Extension(name = 'hi_ftn',
                       sources = ['hi_ftn.pyf', 'hi_ftn.f'])

if __name__ == "__main__":
    from numpy.distutils.core import setup
    setup(name = 'f2py_example',
          description       = "Generic fortran module",
          author            = "SonOfEFT",
          author_email      = "cet@appliedpython.com",
          ext_modules = [ext_hi_ftn]
          )