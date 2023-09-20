#!/bin/bash

#build.sh must be adapted to the logic in /src
#this small template is suitable for single file scripts
mkdir -p $PREFIX/bin/
cp symbol_count.py $PREFIX/bin/symbol_count
chmod +x $PREFIX/bin/
