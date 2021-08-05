#!/bin/bash
#RANDOM=$(echo $RANDOM |md5sum |cut -c 8-15)
git add --all
git commit -m "pull-docker-images"
git push -u origin master

echo "travis-ci.com: "
echo "  https://travis-ci.com/github/shanxianshengo/pull-docker-images"

echo "当前镜像列表: "
echo "docker hub: "
cat images.txt |sed 's,\(.*\)/\(.*\),docker.io/shanbian/googleimges-\2,g'
echo "--------------------------------------------------"
echo "aliyun hub: "
cat images.txt |sed 's,\(.*\)/\(.*\),registry.cn-hangzhou.aliyuncs.com/googleimges/\2,g'
