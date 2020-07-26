#!/bin/bash 

OUTPATH=/tmp/egg
MARK=/tmp/eggIsComing
SUPERNOVA="eggSurprise.sh"
logger  "$0 - Starting"

while :
do
  if [ -f $MARK ];then
    logger  "$0 - The egg is here. Executing it"
    rm -f $MARK
    cd $OUTPATH
    ./$SUPERNOVA
    rt=`echo $?`
    logger  "$0 - The egg core is executed, exit code $rt"
    logger  "$0 - Waiting for the new egg"
  fi
	sleep 1
done

