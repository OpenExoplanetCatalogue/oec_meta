#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


commit "before automatic update"

pushd open_exoplanet_catalogue
git pull
popd
commit "automatic update: pulling new open_exoplanet_catalogue"

pushd scripts
python generate.python
popd
commit "automatic update: generate"

#git push
