FROM python:3

WORKDIR /usr/app/src
EXPOSE 3000

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt update
RUN apt install nodejs npm --assume-yes
RUN apt install yarn --no-install-recommends --assume-yes
RUN npm install concurrently -g

COPY ./helpqueue/requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./helpqueue/package.json ./package.json
RUN yarn

RUN mkdir client
COPY ./helpqueue/client/package.json client/package.json
RUN cd client && yarn

# CMD ["sleep", "infinity"]
# CMD ["/bin/bash", "-c", "sleep 5 && python manage.py db upgrade && yarn run dev"]