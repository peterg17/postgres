# contrib/loose_quadtree/Makefile

MODULE_big = _loosequad
OBJS = _loose_quadtree.o 

EXTENSION = loose_quadtree 
DATA = loose_quadtree--1.0.sql
PGFILEDESC = "loose_quadtree -- support for an spgist implementation of a loose quadtree index"

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/loose_quadtree
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif