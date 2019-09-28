DHALL_VERSION=1.26.1

download-dhall:
	curl -sSL https://github.com/dhall-lang/dhall-haskell/releases/download/$(DHALL_VERSION)/dhall-$(DHALL_VERSION)-x86_64-linux.tar.bz2 -o dhall.zip

