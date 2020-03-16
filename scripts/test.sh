if ($AUTHOR_NAME -ne 'TravisMooreBot');
then
  python -m unittest discover -s moore_math_beta -p 'test_*.py'
fi
