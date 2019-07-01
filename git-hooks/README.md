# git-hooks
You can make your commit messages in your git repo follows specific format or pattern. This can be achieve by using `git-hooks`, where the commit message is formatted with the help of `commit-msg` hook. commit-msg hook will be trigger on each commit.

You can customize the `$regex` found in the script as per your need. Exisiting regex is designed to handle `PROJECT-#### [committer_name_1|committer_name_2] commit message` pattern.

To install `commit-msg-validator.sh` use the following commands

```sh
cd <path-to-git-repo-to-install-commit-message-validator>

wget https://raw.githubusercontent.com/ImShakthi/hackrator/master/git-hooks/commit-msg-validator.sh

chmod +x commit-msg-validator.sh

sh commit-msg-validator.sh
```

Hola, commit message validator would be installed successfully.

-------
