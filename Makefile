UK_ROOT ?= $(PWD)/.unikraft/unikraft
UK_LIBS ?= $(PWD)/.unikraft/libs

LIBS-y :=
LIBS-y := $(LIBS-y):$(UK_LIBS)/compiler-rt
LIBS-y := $(LIBS-y):$(UK_LIBS)/libunwind
LIBS-y := $(LIBS-y):$(UK_LIBS)/libgo
LIBS-y := $(LIBS-y):$(UK_LIBS)/musl
LIBS-y := $(LIBS-y):$(UK_LIBS)/lwip

all:
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS-y)

$(MAKECMDGOALS):
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS-y) $(MAKECMDGOALS)
