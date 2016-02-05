.DEFAULT_GOAL := stub
bindir ?= ./build/bin
etcdir ?= ./build/etc
uname := $(shell uname -s)

clean: | uninstall

install: | stub
	@rsync -a src/ ${bindir}/
ifeq (${uname}, Darwin)
	@$(eval _bindir := $(shell greadlink -f ${bindir}))
	@$(eval _etcdir := $(shell greadlink -f ${etcdir}))
	@sed -i '' "s|bindir=|bindir=${_bindir}|g" ${bindir}/hykes-provisioner
	@sed -i '' "s|etcdir=|etcdir=${_etcdir}|g" ${bindir}/hykes-provisioner
else ifeq (${uname}, Linux)
	@$(eval _bindir := $(shell readlink -f ${bindir}))
	@$(eval _etcdir := $(shell readlink -f ${etcdir}))
	@sed -i "s|bindir=|bindir=${_bindir}|g" ${bindir}/hykes-provisioner
	@sed -i "s|etcdir=|etcdir=${_etcdir}|g" ${bindir}/hykes-provisioner
	@sed -i "s|sed -i ''|sed -i|g" ${bindir}/hykes-provisioner
	@sed -i "s|greadlink|readlink|g" ${bindir}/hykes-provisioner
endif

stub:
	@mkdir -p ${bindir}
	@mkdir -p ${etcdir}

test: | test-unit test-integration

test-integration: | install
	@bats test/integration

test-unit: | install
	@bats test/unit

uninstall:
	@rm -rf ${bindir}
	@rm -rf ${etcdir}

.PHONY: clean install stub test test-integration test-unit uninstall
