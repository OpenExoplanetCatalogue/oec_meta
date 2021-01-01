#!/bin/bash

commit (){
  git add *
  git commit -a -m "$1"
}


python generate.python
commit "automatic update: generate"

git push
