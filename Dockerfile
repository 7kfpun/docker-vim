FROM debian:latest

RUN echo "deb http://http.us.debian.org/debian unstable main" > /etc/apt/sources.list && \
    apt-get update && apt-get install -y vim-nox git curl ca-certificates silversearcher-ag mercurial exuberant-ctags ack-grep --no-install-recommends

RUN git clone git://github.com/7kfpun/.vim.git ~/.vim/

RUN mkdir -p ~/.vim/bundle && \
    git clone git://github.com/Shougo/neobundle.vim.git root/.vim/bundle/neobundle.vim && \
    cd ~/.vim/bundle/neobundle.vim/bin && ./neoinstall

CMD ["vim"]
