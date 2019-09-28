DHALL_VERSION=1.26.1
EVENT=./events/jane.dhall

download-dhall:
	curl -sSL https://github.com/dhall-lang/dhall-haskell/releases/download/$(DHALL_VERSION)/dhall-$(DHALL_VERSION)-x86_64-linux.tar.bz2 -o dhall.tar.bz2

zip: download-dhall
	zip function.zip bootstrap handler.sh src/*

local-sam-run: zip
	sam local invoke -e ${EVENT}


