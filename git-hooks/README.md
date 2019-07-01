# git-hooks

### Commit message validator - `commit-msg` hook
To enforce commit messages in git repo to follow specific format or pattern. This can be achieve by using `git-hooks`, where the commit message is formatted with the help of `commit-msg` hook. commit-msg hook will be trigger on each commit.

Customize the `$regex` found in the script as per need. Existing regex is designed to handle `PROJECT-#### [committer_name_1|committer_name_2] commit message` pattern, which can be replaced.

To install `commit-msg-validator.sh` use the following commands

```sh
cd <path-to-git-repo-to-install-commit-message-validator>

wget https://raw.githubusercontent.com/ImShakthi/hackrator/master/git-hooks/commit-msg-validator.sh

chmod +x commit-msg-validator.sh

sh commit-msg-validator.sh
```

Hola, commit message validator would be installed successfully.

-------

