cd "$travis_build_dir"
python setup.py sdist bdist_wheel
twine upload -u __token__ -p $travis_pass dist/*
