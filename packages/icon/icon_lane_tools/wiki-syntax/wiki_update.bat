@echo off

pushd C:\Users\peter\Documents\website\wiki_html
dir /b *.html | wiki_highlight
ruby ..\..\..\projects\rougewiki.rb .
popd
