
GOVER=$(go version | sed -E 's/.+go([0-9.]+) .+/\1/g')

export GOROOT=/usr/local/Cellar/go/$GOVER/libexec