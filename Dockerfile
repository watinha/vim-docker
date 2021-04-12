FROM alpine:3.13.4


RUN adduser --uid 501 -D watinha # watinha uid

RUN apk add git alpine-sdk ruby-dev python3-dev ruby-rake ncurses-dev
WORKDIR /
RUN git clone https://github.com/vim/vim /app
WORKDIR /app
RUN ./configure --enable-rubyinterp=yes --enable-python3interp=yes --enable-multibyte
RUN make
RUN make install

RUN mkdir -p /usr/local/share/vim/vim82/autoload  /usr/local/share/vim/vim82/bundle
RUN curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > /usr/local/share/vim/vim82/autoload/pathogen.vim
RUN git clone https://github.com/SirVer/ultisnips /usr/local/share/vim/vim82/bundle/ultisnips
RUN git clone https://github.com/honza/vim-snippets /usr/local/share/vim/vim82/bundle/vim-snippets
RUN git clone https://github.com/wincent/command-t.git /usr/local/share/vim/vim82/bundle/command-t
WORKDIR /usr/local/share/vim/vim82/bundle/command-t
RUN rake make
ADD vimrc /root/.vimrc

USER 501
WORKDIR /app
CMD ['vim']
