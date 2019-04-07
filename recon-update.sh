source "$(dirname $0)/recon-helpers.sh"

check_environment_requirements

git -C "$directory" add .
git -C "$directory" commit --all --message "Repo updated"

