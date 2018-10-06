# dotfiles

## Powerline font
    https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf

## Vim setup (Vi IMproved 8.1)
    brew install vim --with-override-system-vi
    
.bash_profile

    alias vim="/usr/local/opt/vim/bin/vim"
    
## Go setup
    brew install go

.bash_profile

    export GOPATH="${HOME}/.go"
    export GOROOT="$(brew --prefix golang)/libexec"
    export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

Open Vim and execute :GoInstallBinaries
