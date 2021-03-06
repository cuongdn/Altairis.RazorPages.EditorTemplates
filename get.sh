#!/usr/bin/env bash

# Inspired by IdentityServer QuickStart UI installer script

set -e
SOURCE="https://github.com/ridercz/Altairis.RazorPages.EditorTemplates/archive/master.zip"
curl -L -o templates.zip "$SOURCE"
unzip -d ui templates.zip
[[ -d Pages ]] || mkdir Pages
cp -r ./templates/Altairis.RazorPages.EditorTemplates-master/Pages/* Pages
rm -rf templates templates.zip
