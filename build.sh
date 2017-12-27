#!/bin/bash

OUTDIR="output"

php -f index.php | while read site; do
	dir=$OUTDIR
	if [ $site != index ]; then
		dir=$OUTDIR/$site
	fi

	mkdir -p $dir
	php -f index.php $site > $dir/index.html
done

cp -r images output
cp -r css output
cp -r js output
