VagrantJenkins
==============

## 0.edit ~/.ssh/config


同GitHubに複数のアカウントを持ち、接続の秘密鍵を切り分けたい場合は、
~/.ssh/config に専用のHostエイリアスを切って鍵と結び付けてください。


default : git@github.com
alias   : git@github-bot


```
Host github-bot
 HostName github.com
 User git
 IdentityFile ~/.ssh/id_rsa_bot
 StrictHostKeyChecking no
 ```
 
## 1.git clone

```
$ git clone git@github.com:hidetarou2013-cookbooks/VagrantJenkins.git
```

## 2.edit .git/config

sample

userセクションに関しては、自分のアカウントにしてください。
remote origin url に関しては、ssh 接続のやり方によります。

通常は、HOST部は「github.com」で構いません。
ですが、同GitHubに複数のアカウントを持ち、接続の秘密鍵を切り分けたい場合は、
~/.ssh/config に専用のHostエイリアスを切って鍵と結び付けてください。


```
[core]
    repositoryformatversion = 0
    filemode = false
    bare = false
    symlinks = false
    ignorecase = true
    hideDotFiles = dotGitOnly
    logallrefupdates = true
    quotepath = false
    autocrlf = true
[user]
    name = hmaekawa@notepc2
    email = hmaekawa@itdirect.co.jp
[color]
    ui = auto
[remote "origin"]
	url = git@github.com:hidetarou2013-cookbooks/VagrantJenkins.git
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

```


