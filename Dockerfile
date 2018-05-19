FROM n3phtys/cervisia-container:latest


ENV CERVISIA_ADMIN_PASSWORD test
ENV CERVISIA_PERSISTENCE_PATH /db
ENV RUST_LOG cervisia_server=warn
ENV CERVISIA_USE_MOCK_DATA false
ENV CERVISIA_SERVER_PORT 80
ENV CERVISIA_SERVER_HOST 0.0.0.0

COPY items.json /usr/cervisia/items.json
COPY users.json /usr/cervisia/users.json

WORKDIR /usr/cervisia/

EXPOSE 80

CMD [ "/usr/cervisia/backend/cervisia-server" ] 
