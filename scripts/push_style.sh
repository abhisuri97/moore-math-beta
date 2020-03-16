cd "$travis_build_dir"
python setup.py sdist bdist_wheel
twine upload -u __token__ -p $travis_pass dist/*
cd "$travis_build_dir"
git config --global user.email "suriabhinav1997@gmail.com"
git config --global user.name "TravisMooreBot"
git checkout $travis_branch
  ## push the files to master
if ( $num_errors_after < $num_errors_before )
then
  git commit -a -m "pep-8 fix"
  git config --global  simple # push only to the current branch.  
  git push -f -q https://$github_api_key@github.com/abhisuri97/moore-math-beta.git master > /dev/null
fi
