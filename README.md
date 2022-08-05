一个全局git钩子，在commit时检查设置的user.email是否以deepin.org或uniontech.com结尾

只对在github上开发的仓库生效

只对在linuxdeepin组织下的仓库或从linuxdeepin fork出去的仓库生效

## Install

### 一键安装
```shell
wget https://raw.githubusercontent.com/myml/git-email-check/master/install.sh -O - | sh
```
### 手动安装
```
mkdir -p ~/.config/git/hooks
wget -N -P ~/.config/git/hooks https://raw.githubusercontent.com/myml/git-email-check/master/pre-commit
chmod +x ~/.config/git/hooks/pre-commit
git config --global core.hooksPath ~/.config/git/hooks
```

### 邮箱设置教程

*下面的邮箱地址换成自己的*

单个仓库设置

`git config user.email wurongjie@deepin.org`

全局设置（建议）

`git config --global user.email wurongjie@deepin.org`

父目录匹配

添加下列配置到 `~/.gitconfig_linuxdeepin`

```ini
[user]
	email = wurongjie@deepin.org
```

添加下列配置到 `~/.gitconfig`

```ini
[includeIf "gitdir/i:~/Src/github.com/linuxdeepin/"]
        path = ~/.gitconfig_linuxdeepin
```
把从linuxdeepin组织下载的仓库（包括从linuxdeepin fork的）全部放置到一个目录中，如 `~/Src/github.com/linuxdeepin/`
在该目录下所有仓库会自动使用新邮箱地址。
