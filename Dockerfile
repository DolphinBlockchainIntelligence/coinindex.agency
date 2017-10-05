# docker build -t coinindex-agency . && docker run -d --name coinindex-agency -e "WEBPORT=80" -e "REGURL=http://localhost:3000" -p 5005:80 coinindex-agency
# docker tag coinindex-agency suenot/coinindex-agency
# docker push suenot/coinindex-agency
#
FROM node:7.10-alpine
LABEL maintainer="Eugen Soloviov"
COPY server /server
COPY client /server/public
COPY register.json /server/register.json
WORKDIR /server
CMD ["node","index.js"]