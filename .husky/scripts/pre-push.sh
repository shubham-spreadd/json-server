#!/bin/sh
branch_name=$(git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3)

if [ "$branch_name" = "release" ] || [ "$branch_name" = "develop" ]; then
  echo "Pushing to $branch_name is not allowed!"
  exit 1
fi
