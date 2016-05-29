
#
#  `mo`
#

include $(shell find $(shell pwd) -name '*.mk')

.ONESHELL:
SHELL := $(PYTHON)

blab:
	@print "Hello, world!"
