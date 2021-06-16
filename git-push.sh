#!/bin/bash
#RANDOM=$(echo $RANDOM |md5sum |cut -c 8-15)
git add --all
git commit -m "pull-docker-images"
git push -u origin master


echo "https://travis-ci.com/github/shanxianshengo/pull-docker-images"
