#!/usr/bin/env bash

# Check if there any changed files
function get_changed_files {
    CHANGED_FILES=$({ git diff --name-only; git diff --name-only --staged; } | uniq)
    export CHANGED_FILES
}

# Pull in changes from remote repository
function git_pull {
    get_changed_files
    if [[ $CHANGED_FILES != "" ]]; then
        git stash
    fi
    git pull --rebase

    if [[ $CHANGED_FILES != "" ]]; then
        git stash apply
        git stash clear
    fi
}

# Push changes to remote repository with optional commit message
function git_push {
    get_changed_files
    if [[ $CHANGED_FILES != "" ]]; then
        git add .
        git status

        if [[ $2 == "" ]]; then
            local commit_message="Updated website content"
        else
            local commit_message=$2
        fi

        git commit -m "$commit_message"
    fi
    git push
}

if [[ $1 == "pull" ]]; then
    git_pull
elif [[ $1 == "push" ]]; then
    git_push "$@"
fi
