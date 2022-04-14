# global settings
'git config --global user.name Zark_Altair'
'git config --global user.email zarkaltair@gmail.com'

# local settings
'git config user.name Zark_Altair'
'git config user.email zarkaltair@gmail.com'

# select editor
'git config --global core.editor emacs'

# check git config list
'git config --list'

# colorized output
'git config --global color.ui true'

# alias
'git config --global alias.co checkout'
'git config --global alias.br branch'
'git config --global alias.ci commit'
'git config --global alias.st status'

# switch remote URLs from HTTPS to SSH
'git remote -v'
'git remote set-url origin git@github.com:USERNAME/REPOSITORY.git'

# switch remote URLs from SSH to HTTPS
'git remote -v'
'git remote set-url origin https://github.com/USERNAME/REPOSITORY.git'

# files status
'git status'
# short file status
'git status -s'

# addition file to 'Staging Area'
'git add <file>'
# addition all files
'git add .'

# deleting file from 'Working Directory', 'Staging Area' and 'Repository'
'git rm <file>'
# deleting file from 'Staging Area', but not is 'Working Directory'
'git rm --cached <file>'

# remove and rename file
'git mv <file>'

# create commit with message
'git commit -m "message"'
# create commit without new file not in 'Staging Area'
'git commit -am "message"'
# change commit message and file in
'git commit --amend "message"'

# create new branch
'git branch <name-branch>'
# go to new branch
'git checkout <name-branch>'
# or, short command
'git checkout -b <name-branch>'

# go to branch, commit, tag or file_name_to_restore
'git checkout <branch>'
'git checkout <commit>'
'git checkout <tag>'

# go to master branch
'git checkout master'
# go to commit with tag HEAD
'git checkout HEAD'
# go to commit with hash
'git checkout b20eb8bdb8daf5fcec3ceb191c6b9b25507376ca'
# discard uncommitted changes to file.txt
' git checkout -- file.txt'

# show current branch name
'git branch'
# show all branch name
'git branch -a'
'git branch --all'
# show local branch name
'git branch --list'
# show remote-tracking branches
'git branch -r'

# search file in commit
'git log --summary'
'git log --stat'
'git log -p'
'git log --pretty=oneline'
'git log --pretty=oneline --author="Author"'
'git log --oneline --graph --decorate --all'
'git log --pretty=format:'%h %ad | %s%d [ %an ]' --date=short'

# save changes without commit
'git stash'
# show all changes in stash
'git stash list'

# to return changes from stash and delete
'git stash pop <number changes>'
# to return changes from stash without delete
'git stash apply <number changes>'

# drop previously change from stash list
'git stash drop'
# clear stash list
'git stash clear'

# to unstaged files
'git restore --staged <file>'

# change number commit without changes index and files
'git reset --soft HEAD~'
# change number commit with change index without change files
'git reset --mixed HEAD~'
# change number commit, index and change files
'git reset --hard HEAD~'
# return to previously commit for file_name
'git reset HEAD <file_name>'
# return to commit for file_name
'git reset <commit> <file_name>'

# delete wrong commit
'git revert'
'git revert HEAD --no-edit'
'git revert <hash> --no-edit'
# if appearance conflict and skip them
'git revert --skip'
# if appearance conflict and cancel revert operation
'git revert --abort'
# if appearance conflict and fix it
'git revert --continue'

# download all from remote repository
'git fetch --all'
# update the remote-tracking branches
'git fetch origin'
# update the remote-tracking tags
'git fetch -t'
'git fetch --tags'

# for save history commits
# merge two branch
'git merge'
# for drop history commits
'git rebase <branch>'

# sync repository
'git pull'
# sync repository with drop history
'git pull --rebase origin master'

# upload data
'git push <repository>'
# upload to branch_name
'git push origin <branch_name>'

# show changes work directory
'git diff'
# show changes between commits
'git diff <commit> <commit>'
# show changes between work directory and index
'git diff --cached'
# show changes between work directory and index
'git diff --staged'
# show that to be commited
'git diff HEAD'
# comparision with branch
'git diff <branch_name>'
# comparision with current branch in file.txt
'git diff HEAD -- ./file.txt'
# comparision current commit with last commit
'git diff HEAD^ HEAD'
# comparision branches
'git diff <branch_name> master'
# changes that have occurred in the master branch since the new branch was created
'git diff <branch_name>...master'
# show changes only modification, rename and copy
'git diff --diff-filter=MRC'
# show only name and character changes, but not diff
'git diff --name-status'

# show repository name
'git remote'
# show which remote repository work
'git remote -v'

# delete garbage
'git clean'
