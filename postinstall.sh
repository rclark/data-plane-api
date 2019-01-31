#!/usr/bin/env bash

git clone --depth=10 https://github.com/lyft/protoc-gen-validate
cd protoc-gen-validate
git checkout b04e031af9154bfc6b9f921293d8992ca0d52540
cd ..

git clone --depth=10 https://github.com/gogo/protobuf
cd protobuf
git checkout 8e4a75f11384d0fb2188d872d456407e41f33fc0
cd ..

git clone --depth=10 https://github.com/googleapis/googleapis
cd googleapis
git checkout 8526811e8c409f0556452cb9ed91b5365fe162f3
cd ..

git clone --depth=10 https://github.com/protocolbuffers/protobuf protocolbuffers
cd protocolbuffers
git checkout 41f94bf372d36e3b21a6f5e6d46526c2937c48ad
cd ..

ln -s protoc-gen-validate/validate
ln -s protobuf/gogoproto

# mkdir google
cp -R googleapis/google google
cp -R protocolbuffers/src/google/protobuf google/protobuf
