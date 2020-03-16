num_errors_before=`find . -name \*.py -exec pycodestyle --ignore=E402 {} + | wc -l`
echo $num_errors_before

cd "$TRAVIS_BUILD_DIR"
git config --global user.email "suriabhinav1997@gmail.com"
git config --global user.name "Travis"
git checkout $TRAVIS_BRANCH

find . -name \*.py -exec autopep8 --recursive --aggressive --aggressive --in-place {} +
num_errors_after=`find . -name \*.py -exec pycodestyle --ignore=E402 {} + | wc -l`
echo $num_errors_after

if (( $num_errors_after < $num_errors_before )); then
  git commit -a -m "PEP-8 Fix"
  git config --global  simple # Push only to the current branch.  
  # Make sure to make the output quiet, or else the API token will 
  # leak!  This works because the API key can replace your password.
  git push -f -q https://$GITHUB_API_KEY@github.com/abhisuri97/moore-math-beta.git master > /dev/null
fi
cd "$TRAVIS_BUILD_DIR"

  # List the remaining errors - these will have to be fixed manually
find . -name \*.py -exec pycodestyle --ignore=E402 {} +