VagrantJenkins
==============

## 0.edit ~/.ssh/config


��GitHub�ɕ����̃A�J�E���g�������A�ڑ��̔閧����؂蕪�������ꍇ�́A
~/.ssh/config �ɐ�p��Host�G�C���A�X��؂��Č��ƌ��ѕt���Ă��������B


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

user�Z�N�V�����Ɋւ��ẮA�����̃A�J�E���g�ɂ��Ă��������B
remote origin url �Ɋւ��ẮAssh �ڑ��̂����ɂ��܂��B

�ʏ�́AHOST���́ugithub.com�v�ō\���܂���B
�ł����A��GitHub�ɕ����̃A�J�E���g�������A�ڑ��̔閧����؂蕪�������ꍇ�́A
~/.ssh/config �ɐ�p��Host�G�C���A�X��؂��Č��ƌ��ѕt���Ă��������B


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


