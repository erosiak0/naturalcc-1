#!/usr/bin/env bash

echo "Downloading C# parser file"
DIR=dataset/stack_overflow
FILE=${DIR}/py2x.tar.gz
tar -zxvf ${FILE}  -C ${DIR}
rm ${FILE}


if [ -z $NCC ]; then
  CACHE_DIR=~
else
  CACHE_DIR=$NCC
fi

echo "Downloading stackoverflow-C# dataset"
DIR=${CACHE_DIR}/stack_overflow/raw/csharp
mkdir -p ${DIR}

modes=(
  'train'
  'valid'
  'test'
)

for (( idx = 0 ; idx < ${#modes[@]} ; idx++ )); do

wget -O ${DIR}/${modes[idx]}.txt https://raw.githubusercontent.com/sriniiyer/codenn/master/data/stackoverflow/csharp/${modes[idx]}.txt

done

echo "Downloading stack_overflow-python dataset"
DIR=${CACHE_DIR}/stack_overflow/raw/python
mkdir -p ${DIR}

for (( idx = 0 ; idx < ${#modes[@]} ; idx++ )); do

wget -O ${DIR}/${modes[idx]}.txt https://raw.githubusercontent.com/sriniiyer/codenn/master/data/stackoverflow/python/${modes[idx]}.txt

done

echo "Downloading stack_overflow-sql dataset"
DIR=${CACHE_DIR}/stack_overflow/raw/sql
mkdir -p ${DIR}

for (( idx = 0 ; idx < ${#modes[@]} ; idx++ )); do

wget -O ${DIR}/${modes[idx]}.txt https://raw.githubusercontent.com/sriniiyer/codenn/master/data/stackoverflow/sql/${modes[idx]}.txt

done