FROM codercom/code-server:latest

# install 'nvm' to allow installing node and npm versions
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# install node 16 LTS
RUN bash -i -c 'nvm install 16';