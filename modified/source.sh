#!/bin/sh

. ./env.sh  #(1)

nowtime
cp -i -v large-file "$WORK_DIR"
nowtime
