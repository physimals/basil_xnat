#!/bin/bash

INDIR=$1
OUTDIR=$2

shopt -s nullglob
for FILE in "${INDIR}"/*.{nii,nii.gz}; do
  FNAME=`basename $FILE`
  OUTFILE=${FNAME%%.*}_defaced
  fsl_deface $FILE $OUTDIR/$OUTFILE
done
