alias vi='vim'
# remove export GREP_OPTIONS="--color=auto" which is deprecated to alias
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias c='clear'
alias reload='source ~/.zshrc'
alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach -t'
alias ld='ls -d */'
# git
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
# update gh-pages
alias ghp='git checkout gh-pages;git merge master;git push origin gh-pages;git checkout master'
# OSX
if [ "$(uname)" = "Darwin" ]; then
    # postgres
    alias postgres_ctl='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
    alias pg_start='postgres_ctl start'
    alias pg_stop='postgres_ctl stop'
    alias pg_status='postgres_ctl status'
    # redis
    alias redis_start='redis-server /usr/local/etc/redis.conf &'
    alias redis_stop='redis-cli -h 127.0.0.1 -p 6379 shutdown'
# *nix
else
    # postgres
    alias pg_start='sudo service postgresql start'
    alias pg_stop='sudo service postgresql stop'
    alias pg_status='sudo service postgresql status'
    # redis
    alias redis_start='sudo redis-server /etc/redis/redis.conf &'
    alias redis_stop='sudo redis-cli -h 127.0.0.1 -p 6379 shutdown'
fi
# show unapplied migrations in a django project
alias show_unapplied='python manage.py showmigrations --list --settings=$DJANGO_SETTINGS_MODULE | grep -v "[X]"'
