#! /bib/bash
if [ "$(git log -1 | grep skip)" ]; then
 echo "found skip"
