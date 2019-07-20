import unittest
# import unittest2 as unittest # for versions of python < 2.7

import sys, os

'''
here = os.path.abspath(os.path.dirname(__file__)) # Needed for py.test
up_one = os.path.split( here )[0]  # Needed to find genericf2py development version
if here not in sys.path[:2]:
    sys.path.insert(0, here)
if up_one not in sys.path[:2]:
    sys.path.insert(0, up_one)
'''
    
from genericf2py.main import main
from genericf2py.fprog import add_2_ints, offset_int

class MyTest(unittest.TestCase):

    def setUp(self):
        unittest.TestCase.setUp(self)

    def tearDown(self):
        unittest.TestCase.tearDown(self)

    def test_should_always_pass_cleanly(self):
        """Should always pass cleanly."""
        pass

    def test_myclass_existence(self):
        """Check that function returns result"""
        result = main(i1=3, i2=5)

        # Function should return None
        self.assertEqual(result, 8)

    def test_Add_2_Integers(self):
        """test Add 2 Integers"""
        
        isum = add_2_ints( 7, 8 )
        self.assertEqual(isum, 15)

    def test_Offset_Integer(self):
        """test Offset Integer"""
        
        ioff = offset_int( 11 )
        self.assertEqual(ioff, 111)

if __name__ == '__main__':
    # Can test just this file from command prompt
    #  or it can be part of test discovery from nose, unittest, pytest, etc.
    unittest.main()

