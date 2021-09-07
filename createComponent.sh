#!/bin/sh  
  while getopts a: flag
do
    case "${flag}" in
        a) filename=${OPTARG};;
    esac
done
echo "creating a component named $filename";
mkdir ./components/$filename;
touch ./components/$filename/filename.js;
touch ./components/filename/filename.module.scss;  
  
jsfile=$filename.js
echo "import { useState } from 'react';" > $jsfile
echo "import classes from './$filename.module.scss';" >> $jsfile
echo ' ' >> $jsfile
echo "export const $filename = (props) => {" >> $jsfile
echo "    return (" >> $jsfile
echo "        <p>I'm the new $filename component look at meeeeee</p>" >> $jsfile
echo "    );" >> $jsfile
echo '};' >> $jsfile
echo >> $jsfile

echo "Done creating: $filename component";
