SRCDIR = ./ryu/ryu
OUTDIR ?= ./lib/$(ARCH)/$(CONFIG)/$(PLATFORM)
EXCLUDESRC = ./ryu/ryu/generic_128.c
PROJKIND = lib
INCLUDEPATH = ./ryu
PLATFORM ?= x64
CONFIG ?= debug
include ./Rules/Rules.mk


