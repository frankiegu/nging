go get github.com/karalabe/xgo
go get github.com/jteeuwen/go-bindata/...
go get github.com/admpub/go-bindata-assetfs/...
cd ..
$GOPATH/bin/go-bindata-assetfs -tags bindata public/... template/... config/i18n/...
cd tool

export NGINGEX=
export BUILDTAGS=

export GOOS=linux
export GOARCH=amd64
source ${PWD}/inc-build-x.sh


export GOOS=linux
export GOARCH=386
source ${PWD}/inc-build-x.sh

export GOOS=darwin
export GOARCH=amd64
source ${PWD}/inc-build-x.sh



export NGINGEX=.exe

export GOOS=windows
export GOARCH=386
source ${PWD}/inc-build-x.sh

export GOOS=windows
export GOARCH=amd64
source ${PWD}/inc-build-x.sh
