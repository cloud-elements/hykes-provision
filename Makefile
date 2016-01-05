bindir ?= ./build/bin
ref ?= 'master'
uname := $(shell uname -s)

apt:
ifeq (${uname}, Linux)
	@add-apt-repository ppa:duggan/bats -y
	@apt-get update
	@apt-get install bats
endif

brew:
ifeq (${uname}, Darwin)
	@brew install coreutils
	@brew install bats
endif

clean: | uninstall

dependencies: | apt brew gem

gem:
	@gem install tugboat

install: | stub
	@rsync -a cli/src/ ${bindir}/
ifeq (${uname}, Darwin)
	@$(eval _bindir := $(shell greadlink -f ${bindir}))
	@sed -i '' "s|bindir=|bindir=${_bindir}|g" ${bindir}/hykes-provision
	@sed -i '' "s|ref=|ref=${ref}|g" ${bindir}/hykes-provision
else ifeq (${uname}, Linux)
	@$(eval _bindir := $(shell readlink -f ${bindir}))
	@sed -i "s|sed -i ''|sed -i|g" ${bindir}/hykes-provision
	@sed -i "s|bindir=|bindir=${_bindir}|g" ${bindir}/hykes-provision
	@sed -i "s|ref=|ref=${ref}|g" ${bindir}/hykes-provision
endif

stub:
	@mkdir -p ${bindir}

test: | test-cli

test-cli: | install
	@cli/test/hykes-provision

uninstall:
	@rm -rf ${bindir}

.PHONY: apt brew clean dependencies gem install stub test test-cli uninstall
