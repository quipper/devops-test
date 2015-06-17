#!/bin/bash

ARCHIVE_FILE=quipper-devops-test.zip

if [ -f "$ARCHIVE_FILE" ]; then
  rm $ARCHIVE_FILE
fi

git archive HEAD --worktree-attributes -o $ARCHIVE_FILE
