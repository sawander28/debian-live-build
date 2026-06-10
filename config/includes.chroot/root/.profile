# $Debian: .profile 20260407 wandsas $

umask 022

PATH=$HOME/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/local/bin
export PATH
export EDITOR=vim
export PAGER=less

: ${XDG_RUNTIME_DIR:=/run/user/$(id -u)}
export XDG_RUNTIME_DIR

case "$-" in
*i*)    # interactive shell
	if [ -x /usr/bin/tset ]; then
		eval `/usr/bin/tset -IsQ '-munknown:?vt220' $TERM`
	fi
	;;
esac

if [ -d ~/.profile.d ]; then
    for sh in ~/.profile.d/*.sh; do
        [ -r $sh ] && . $sh
    done
fi

[ -r ~/.bashrc ] && . ~/.bashrc
