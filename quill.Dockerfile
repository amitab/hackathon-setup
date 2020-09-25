FROM node:10.17.0-buster-slim

WORKDIR /usr/app/src
EXPOSE 3000

COPY ./quill/package.json ./package.json

# RUN apt update 
# RUN apt install sytemctl
RUN npm install
# RUN ./node_modules/.bin/gulp build

# COPY ./* ./

# ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
CMD ["/bin/bash", "-c", "sleep 3 && ./node_modules/.bin/gulp server"]
# CMD ["sleep", "infinity"]