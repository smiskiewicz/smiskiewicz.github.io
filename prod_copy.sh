#! /bin/bash

hugo

rm -R ../prod_blog
mkdir -p ../prod_blog
cd public
cp -R . ../../prod_blog
cd ..
