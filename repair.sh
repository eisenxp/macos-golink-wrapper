#!/bin/sh
set -e

go version >> /dev/null
export GP1=`go env | grep GOROOT | awk -F'"' '{print $2}'`
cd $GP1
cd ./pkg/tool/darwin_amd64
mv link original_link
wget https://raw.githubusercontent.com/eisenxp/macos-golink-wrapper/main/link -O link
chmod +x link
echo 'done'
