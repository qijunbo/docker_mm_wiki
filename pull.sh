#!/bin/sh
version=1.7
if [ -z "${version}" ]; then
   echo "[error:] version is not specified."
   echo "[usage:] $0 <version>"    	
   exit 1
fi
docker pull registry.cn-qingdao.aliyuncs.com/qijunbo/mm_wiki:${version}
docker tag registry.cn-qingdao.aliyuncs.com/qijunbo/mm_wiki:${version}  qijunbo/mm_wiki:latest  
