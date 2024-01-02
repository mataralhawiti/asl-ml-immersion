# For Matar - to fix push token
# git fork --

git clone
# git config user.name "Matar"
# git config user.email "matar@linux.com"
git remote -v

# sync with orign
git remote add upstream https://github.com/GoogleCloudPlatform/asl-ml-immersion.git

# output: 
## origin  https://github.com/mataralhawiti/asl-ml-immersion.git (fetch)
## origin  https://github.com/mataralhawiti/asl-ml-immersion.git (push)
## upstream        https://github.com/GoogleCloudPlatform/asl-ml-immersion.git (fetch)
## upstream        https://github.com/GoogleCloudPlatform/asl-ml-immersion.git (push)



# Sync local/main with upstream/main
## note: for older repositories, main may be named master instead so substitute
git checkout main
git fetch upstream
git merge upstream/main #keeps main branch as mirror of upstream, alt: git pull

## Remember to switch back to branch
git checkout [feature-branch-name]
git merge main

## Push any new upstream changes to remote fork
git push main origin


# feature branch
git checkout -b feature-branch-name
git commit -am "Message detailing the changes"


# Create remote feature branch on remote for pull request to upstream

## Initial push; -u creates remote feature branch version
git push -u origin feature-branch-name
## Subsequent pushes
git push origin

# Clean-up
## Delete local branch
git branch -d feature-branch-name
## Delete remote branch
git push origin --delete remote-branch-name