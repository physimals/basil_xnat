#!/bin/bash

INDIR=$1
OUTDIR=$2
FILTER=$3

if [ -z $FILTER ]; then
  FILTER="*"
fi

shopt -s nullglob
for FILE in "${INDIR}"/$FILTER.{nii,nii.gz}; do
  FNAME=`basename $FILE`
  OUTFILE=${FNAME%%.*}_defaced
  fsl_deface $FILE $OUTDIR/$OUTFILE
done
