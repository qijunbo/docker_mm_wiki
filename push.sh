#!/bin/sh
version=1.7
if [ -z "${version}" ]; then
   echo "[error:] version is not specified."
   echo "[usage:] $0 <version>"    	
   exit 1
fi

docker login --username=junboqi@foxmail.com registry.cn-qingdao.aliyuncs.com
docker tag qijunbo/mm_wiki:latest  registry.cn-qingdao.aliyuncs.com/qijunbo/mm_wiki:${version}
docker push registry.cn-qingdao.aliyuncs.com/qijunbo/mm_wiki:${version}
