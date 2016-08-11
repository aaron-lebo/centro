#!/bin/sh
#| CL-LAUNCH 4.1.4 CONFIGURATION
LISP_CONTENT=
SOFTWARE_SYSTEM=
SOFTWARE_INIT_FORMS=
SOFTWARE_FINAL_FORMS=
SOURCE_REGISTRY=
INCLUDE_PATH=/usr/share/common-lisp/source/cl-launch
LISPS="sbcl ccl clisp abcl cmucl ecl mkcl allegro lispworks scl gcl xcl"
WRAPPER_CODE=
DUMP=
RESTART="(lambda()(main uiop:*command-line-arguments*))"
IMAGE_BASE=
IMAGE_DIR=
IMAGE=
# END OF CL-LAUNCH CONFIGURATION

# This file was generated by cl-launch 4.1.4
# This file was automatically generated and contains parts of CL-Launch
#
PROG="$0"
. /usr/share/common-lisp/source/cl-launch/wrapper.sh


launch_self "$@"
ABORT
# |#
#-cl-launch
(cl:load "/usr/share/common-lisp/source/cl-launch/launcher.lisp" :verbose nil :print nil)


;;;; CL-LAUNCH LISP INITIALIZATION CODE

#-cl-launched
(cl-launch::run :quicklisp t :build '((:load-system "centro")) :restart '("(lambda()(main uiop:*command-line-arguments*))" . :centro))

;;;; END OF CL-LAUNCH LISP INITIALIZATION CODE
