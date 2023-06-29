#!/bin/bash
git add *
git commit -m "adding"
git status


gitusername=`"havoc13naveen"`
gittoken=`"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"`
git push https://$gitusername:$gittoken@github.com/Havoc13Naveen/sample-httpd.git
