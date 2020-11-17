FROM node:11.15.0-stretch

RUN yarn global add @angular/cli

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install --allow-unauthenticated -y google-chrome-stable

RUN apt-get -y install python3-pip
RUN pip3 install awscli --upgrade
