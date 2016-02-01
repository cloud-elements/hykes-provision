bindir ?= ./build/bin
etcdir ?= ./build/etc
libdir ?= ./build/lib
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

dependencies: | apt brew gem hykes

gem:
	@gem install tugboat

hykes: hykes-blueprinter

hykes-blueprinter: stub
	@rm -rf ${libdir} && \
		git clone git@github.com:cloud-elements/hykes-blueprinter.git ${libdir}/hykes-blueprinter && \
		(cd ${libdir}/hykes-blueprinter ; git checkout master && make dependencies && make install)

install: | stub
	@rsync -a src/ ${bindir}/
ifeq (${uname}, Darwin)
	@$(eval _bindir := $(shell greadlink -f ${bindir}))
	@$(eval _etcdir := $(shell greadlink -f ${etcdir}))
	@$(eval _libdir := $(shell greadlink -f ${libdir}))
	@sed -i '' "s|bindir=|bindir=${_bindir}|g" ${bindir}/hykes-provisioner
	@sed -i '' "s|etcdir=|etcdir=${_etcdir}|g" ${bindir}/hykes-provisioner
	@sed -i '' "s|libdir=|libdir=${_libdir}|g" ${bindir}/hykes-provisioner
else ifeq (${uname}, Linux)
	@$(eval _bindir := $(shell readlink -f ${bindir}))
	@$(eval _etcdir := $(shell readlink -f ${etcdir}))
	@$(eval _libdir := $(shell readlink -f ${libdir}))
	@sed -i "s|bindir=|bindir=${_bindir}|g" ${bindir}/hykes-provisioner
	@sed -i "s|etcdir=|etcdir=${_etcdir}|g" ${bindir}/hykes-provisioner
	@sed -i "s|libdir=|libdir=${_libdir}|g" ${bindir}/hykes-provisioner
	@sed -i "s|sed -i ''|sed -i|g" ${bindir}/hykes-provisioner
	@sed -i "s|greadlink|readlink|g" ${bindir}/hykes-provisioner
endif

stub:
	@mkdir -p ${bindir}
	@mkdir -p ${etcdir}
	@mkdir -p ${libdir}

test: | test-unit test-integration

test-integration: | install
	@bats test/integration

test-unit: | install
	@bats test/unit

uninstall:
	@rm -rf ${bindir}
	@rm -rf ${etcdir}
	@rm -rf ${libdir}

.PHONY: apt brew clean dependencies gem hykes hykes-blueprinter install stub test test-integration test-unit uninstall
