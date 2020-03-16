# fix style
if [ "$AUTHOR_NAME" != "TravisBot" ]; 
then
  find . -name \*.py -exec autopep8 --recursive --aggressive --aggressive --in-place {} +
  echo $num_errors_after
  cd "$TRAVIS_BUILD_DIR"
  python setup.py sdist bdist_wheel
  twine upload -u __token__ -p $TRAVIS_PASS dist/*
fi
