#!/bin/bash
## sets up the docs environment to serve mkdocs-built site

pushd $(dirname $0) > /dev/null

cd $(pwd -P)/..
DOCS_ROOT=./doc/mkdocs/docs

find {doc,core,applications} -path "doc/mkdocs*" -prune -o -name "*.md" -print | cpio -p -dum --quiet $DOCS_ROOT

cp $DOCS_ROOT/../index.md $DOCS_ROOT

popd > /dev/null