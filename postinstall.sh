#!/usr/bin/env bash

git clone https://github.com/lyft/protoc-gen-validate
cd protoc-gen-validate
git checkout b04e031af9154bfc6b9f921293d8992ca0d52540
cd ..

git clone https://github.com/gogo/protobuf
cd protobuf
git checkout 8e4a75f11384d0fb2188d872d456407e41f33fc0
cd ..

ln -s protoc-gen-validate/validate
ln -s protobuf/gogoproto
