if ($AUTHOR_NAME -ne 'TravisMooreBot');
then
  # fix style
  num_errors_before=`find . -name \*.py -exec pycodestyle --ignore=e402 {} + | wc -l`
  echo $num_errors_before
  find . -name \*.py -exec autopep8 --recursive --aggressive --aggressive --in-place {} +
  num_errors_after=`find . -name \*.py -exec pycodestyle --ignore=e402 {} + | wc -l`
  echo $num_errors_after
fi
