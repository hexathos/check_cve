#!/bin/bash
for myfile in *.buildfile ; do
  cp ${myfile} ${myfile}.build
  sed -ie "s/GITVERSION/$(git rev-parse --short HEAD)/g" ${myfile}.build
  sed -ie "s/BUILD/${1}/g" ${myfile}.build
  sed -ie "s/DATE/$(date +%Y%m%d%H%M%S)/g" ${myfile}.build
  equivs-build ${myfile}.build
  rm -Rf ${myfile}.build
done
