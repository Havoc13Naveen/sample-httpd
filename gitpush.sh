#!/bin/bash
git add *
git commit -m "adding"
git status


gitusername="havoc13naveen"
gittoken="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"
giturl="github.com/Havoc13Naveen/sample-httpd.git/"
git push https://$gitusername:$gittoken@$giturl
