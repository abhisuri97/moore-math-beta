if [ "$AUTHOR_NAME" != "TravisBot" ]; 
then
  # fix style
  num_errors_before=`find . -name \*.py -exec pycodestyle --ignore=e402 {} + | wc -l`
  echo $num_errors_before
  find . -name \*.py -exec autopep8 --recursive --aggressive --aggressive --in-place {} +
  num_errors_after=`find . -name \*.py -exec pycodestyle --ignore=e402 {} + | wc -l`
  echo $num_errors_after
  cd "$TRAVIS_BUILD_DIR"
  git config --global user.email "suriabhinav1997@gmail.com"
  git config --global user.name "TravisMooreBot"
  git checkout $TRAVIS_BRANCH
  ## push the files to master
  git commit -a -m "pep-8 fix"
  git config --global  simple # push only to the current branch.  
  git push -f -q https://$GITHUB_API_KEY@github.com/abhisuri97/moore-math-beta.git master > /dev/null
fi
