
python setup.py sdist
rem only upload source to PyPI
twine upload --skip-existing dist/*.gz
