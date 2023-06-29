#!/bin/bash
git add *
git commit -m "adding"
git status


gitusername=$("havoc13naveen")
gittoken=$("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")

git push -u $gitusername  $gittoken
