#!/bin/sh
(set -o igncr) 2>/dev/null && set -o igncr; # This comment is required.
# The above line ensures that the script can be run on Cygwin/Linux even with Windows CRNL.
#
# git-check-tstool - check the TSTool repositories for status
# - this script calls the general git utilities script

# Get the location where this script is located since it may have been run from any folder.
scriptFolder=$(cd $(dirname "$0") && pwd)

# Git utilities folder is relative to the user's files in a standard development files location:
# - determine based on location relative to the script folder
# Specific repository folder for this repository.
repoFolder=$(dirname ${scriptFolder})
gitReposFolder=$(dirname ${repoFolder})

mainRepo="owf-tstool-usweathergov-plugin"

# Run the general script.
${scriptFolder}/git-util/git-check.sh -m "${mainRepo}" -g "${gitReposFolder}" $@
