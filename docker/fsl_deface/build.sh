#!/bin/bash

tag=6.0.5
docker build -t martincraig/xnat-fsl . 
docker tag martincraig/xnat-fsl martincraig/xnat-fsl:$tag 
docker push martincraig/xnat-fsl:$tag
