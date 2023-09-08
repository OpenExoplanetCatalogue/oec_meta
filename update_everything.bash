#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


python3 generate.python
commit "automatic update: generate"

git push
