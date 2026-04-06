# Shell-Scripts-For-Devops-Engineer-Daily-Tasks

Shell_Scripts for all Daily Devops Engineer Tasks

**install_Package.sh ----> Script **

I developed a generic shell script that installs user-provided packages, with conditional handling for special cases like Docker and Ansible, where additional dependencies and repository configurations are applied

{
 # Git Recovery Commands Explanation

## 1. git reflog

**Purpose:**
Shows the history of all actions performed on the local repository (including commits, resets, rebases, etc.).

**Why it is useful:**
Even if commits are lost due to commands like `git reset --hard`, you can still find them in the reflog and recover your work.

## 2. git reset --hard <commit-id>

**Example:**

git reset --hard 504f233

**Purpose:**
Resets the current branch to a specific commit.

**What it does:**

* Restores all files to the state of the given commit
* Deletes all uncommitted changes
* Moves the HEAD pointer to that commit

**Use case:**
Used to recover lost code or revert the project to a previous stable state.

⚠️ **Warning:** This command permanently deletes uncommitted changes.

## 3. git branch backup-recovered

**Purpose:**
Creates a new branch named `backup-recovered` from the current state.

**Why it is useful:**

* Keeps a safe backup of recovered code
* Prevents accidental data loss
* Allows you to experiment without affecting the main branch

## Summary

These commands are commonly used for:

* Recovering lost commits
* Restoring previous versions of code
* Creating backups before making risky changes


## Best Practice

Before running destructive commands like `git reset --hard`, always create a backup:

git branch backup

}
