FROM ubuntu:14.04

MAINTAINER Adailton do nascimento "dhelbegors@gmail.com"

# Create workspace
ENV HOME /root

# Create path to workdir
WORKDIR $HOME

# Install dependencies and curl
RUN apt-get update && apt-get install -y \
    libmysqlclient-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    tcl8.5-dev \
    tk8.5-dev \
    libxml2-dev \
    libxslt1-dev \
    curl && \
    curl -sL https://deb.nodesource.com/setup | bash -

# install git, vim, nodejs, tmux ruby and python dependencies
RUN apt-get install -y \
    git \
    vim \
    nodejs \
    tmux \
    ruby \
    python3-pip \
    python3-dev \
    python3-setuptools \
    python3-tk \
    python3-imaging \
    python3-bs4

# Install bower and gulp
RUN npm -g install npm@latest && \
    npm install -g bower && \
    npm install -g gulp

# Install tmuxinator
RUN gem install tmuxinator

# Install git-prompt
RUN curl -o ~/.git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Add requirements for docker container
ADD requirements/base.pip /$HOME

# Install django depencies 
RUN pip3 install -r $HOME/base.pip

# Copy bashrc.sh from docker/scripts to workspace 
COPY docker/scripts/bashrc.sh $HOME/.bashrc

# Copy runserver.sh to /bin
COPY docker/scripts/runserver.sh /usr/bin/runserver

# Add +x command to runserver
RUN chmod +x /usr/bin/runserver

# Add .bashrc to rc.local
RUN echo 'source .bashrc' >> /etc/rc.local

# Expose port 8000[ Django server ] and 3000[ Front server ]
EXPOSE 3000 8000 
