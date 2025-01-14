#############################################################################
#
# Project Makefile
#
# (c) Wouter van Ooijen (www.voti.nl) 2016
#
# This file is in the public domain.
# 
#############################################################################

# source files in this project (main.cpp is automatically assumed)
SOURCES := cave_code.asm

# header files in this project
HEADERS := 

# other places to look for files for this project
SEARCH  := 

cave_code.asm:
	python3.10 cave_compiler.py

CLEAN += *.o cave_code.asm

# set REATIVE to the next higher directory 
# and defer to the Makefile.due there
RELATIVE := $(RELATIVE).
include $(RELATIVE)/Makefile.due
