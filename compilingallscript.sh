#!/bin/bash

FILES=*
for f in $FILES
do
   if [[ "$f" == *.py ]]; then    
     echo "Processing $f file..."
     python $f 
   elif [[ "$f" == *.java ]]; then
     echo "Processing $f file..."
     javac $f
     java ${f::-5}
   elif [[ "$f" == *.c ]]; then
     echo "Processing $f file..."
     gcc $f
     ./a.out
   elif [[ "$f" == *.o ]]; then
     echo "Processing $f file..."
     gcc $f
    ./a.out
   elif [[ "$f" == *.sh ]]; then
     echo "Processing $f file..."
     ./$f
   elif [[ "$f" == *.s ]]; then
     echo "Processing $f file..."
     gcc $f
    ./a.out
   fi
done
