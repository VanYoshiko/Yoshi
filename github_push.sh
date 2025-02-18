#!/user/bin/env dash

REMOTE_REPO="git@github.com:VanYoshiko/Yoshi.git"
BRANCH="main"

cd /mnt/configs/backups

git add --all

git commit -m "Automated message"

git push origin main
