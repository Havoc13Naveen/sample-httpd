#!/bin/bash
git add *
git commit -m "adding"
git status


gitusername="havoc13naveen"
gittoken="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"
giturl="github.com/Havoc13Naveen/sample-httpd.git/"
git push https://$gitusername:$gittoken@$giturl
