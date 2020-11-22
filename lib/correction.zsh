if [[ "$ENABLE_CORRECTION" == "true" ]]; then
    # Disable correction.
  alias ack='nocorrect ack'
  alias cd='nocorrect cd'
  alias cp='nocorrect cp'
  alias ebuild='nocorrect ebuild'
  alias gcc='nocorrect gcc'
  alias gist='nocorrect gist'
  alias grep='nocorrect grep'
  alias heroku='nocorrect heroku'
  alias ln='nocorrect ln'
  alias man='nocorrect man'
  alias mkdir='nocorrect mkdir'
  alias mv='nocorrect mv'
  alias mysql='nocorrect mysql'
  alias rm='nocorrect rm'
  alias sudo='nocorrect sudo'

  # Disable globbing.
  alias bower='noglob bower'
  alias fc='noglob fc'
  alias find='noglob find'
  alias ftp='noglob ftp'
  alias history='noglob history'
  alias locate='noglob locate'
  alias rake='noglob rake'
  alias rsync='noglob rsync'
  alias scp='noglob scp'
  alias sftp='noglob sftp'

  setopt correct_all
fi
