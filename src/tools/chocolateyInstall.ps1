$package = 'EthanBrown.GitAliases'

try {
  # inspired by a ton of places
  
  # one letter shortcuts for the win
  git config --global alias.a 'add'
  git config --global alias.b 'branch'
  git config --global alias.c 'checkout'
  git config --global alias.f 'fetch'
  git config --global alias.r 'rebase --interactive HEAD~10'
  git config --global alias.s '-p status'

  # primary workflow related aliases
  git config --global alias.pr 'pull --rebase'
  git config --global alias.pom 'push origin master'
  git config --global alias.pos 'push origin source'
  git config --global alias.rc 'rebase --continue'
  git config --global alias.ra 'rebase --abort'
  git config --global alias.ss '-p status -s'

  # GIT TF aliases
  git config --global alias.tpr "tf pull --rebase --deep"
  git config --global alias.tcd "tf checkin --deep"

  git config --global alias.aliases 'config --get-regexp alias'
  git config --global alias.amend 'commit --amend'
  git config --global alias.bl 'blame -w -M -C'
  git config --global alias.bra 'branch -rav'
  git config --global alias.branches 'branch -rav'
  git config --global alias.changed 'status -sb'
  git config --global alias.filelog 'log -u'
  git config --global alias.hist "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue) [%an]%Creset' --abbrev-commit --date=relative"
  git config --global alias.last 'log -p --max-count=1 --word-diff'
  git config --global alias.lastref 'rev-parse --short HEAD'
  git config --global alias.lasttag 'describe --tags --abbrev=0'
  git config --global alias.pick 'add -p'
  git config --global alias.remotes 'remote -v show'
  git config --global alias.stage 'add'
  $userName = git config --global --get user.name
  if ($userName)
  {
    git config --global alias.standup "log --since yesterday --oneline --author $userName"
  }
  else
  {
    Write-Warning "Set git global username with git config --global user.name 'foo' to use standup"
  }
  git config --global alias.stats 'diff --stat'
  git config --global alias.sync '! git fetch upstream -v && git fetch origin -v && git checkout master && git merge upstream/master'
  git config --global alias.undo 'reset head~'
  git config --global alias.unstage 'reset HEAD'
  git config --global alias.wdiff 'diff --word-diff'
  git config --global alias.who 'shortlog -s -e --'

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
