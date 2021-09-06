#!/bin/sh
while getopts f:a: flag
do
    case "${flag}" in
        f) filename=${OPTARG};;
        a) useFile=${OPTARG};;
    esac
done

mkdir ./views/$filename;
cd ./views/$filename;
touch $filename.js;
touch $filename.scss;
if [ $useFile ]
then
echo 'creating component with use file'
touch use$filename.js
fi

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

echo "Created a component named: $filename";
