#!/bin/bash

set -x

go env -w GOPROXY=https://goproxy.cn,direct
go mod tidy
make build 

ls -alh build/bouheki

