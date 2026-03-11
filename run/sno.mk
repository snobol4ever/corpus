# sno.mk -- shared GNU Make fragment for running corpus .sno programs
# Include this from a repo's Makefile with:
#   CORPUS_ROOT := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))../..
#   include $(CORPUS_ROOT)/run/sno.mk
#
# Targets provided:
#   sno-csnobol4 SNO=path/to/prog.sno [ARGS=...]  -- run under CSNOBOL4
#   sno-spitbol  SNO=path/to/prog.sno [ARGS=...]  -- run under SPITBOL
#   sno-both     SNO=path/to/prog.sno [ARGS=...]  -- run under both
#
# Environment:
#   CSNOBOL4   path to csnobol4 binary  (default: snobol4)
#   SPITBOL    path to spitbol binary   (default: spitbol)
#   SNO_INPUT  file to feed as stdin    (default: /dev/null)

CORPUS_PROGRAMS := $(CORPUS_ROOT)/programs
CORPUS_INC      := $(CORPUS_PROGRAMS)/inc
CSNOBOL4        ?= snobol4
SPITBOL         ?= spitbol
SNO_INPUT       ?= /dev/null

# Resolve SNO to an absolute path so we can cd freely
SNO_ABS := $(abspath $(SNO))

.PHONY: sno-csnobol4 sno-spitbol sno-both

sno-csnobol4:
	@test -n "$(SNO)" || (echo "Usage: make sno-csnobol4 SNO=path/to/prog.sno"; exit 1)
	cd $(CORPUS_PROGRAMS) && \
	  SNOPATH=inc $(CSNOBOL4) -f -I inc $(SNO_ABS) $(ARGS) < $(SNO_INPUT)

sno-spitbol:
	@test -n "$(SNO)" || (echo "Usage: make sno-spitbol SNO=path/to/prog.sno"; exit 1)
	cd $(CORPUS_INC) && \
	  $(SPITBOL) -b $(SNO_ABS) $(ARGS) < $(SNO_INPUT)

sno-both: sno-csnobol4 sno-spitbol
