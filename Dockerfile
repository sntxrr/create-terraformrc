FROM alpine:latest

LABEL "com.github.actions.name"="TFE .terraformrc directory creator"
LABEL "com.github.actions.description"="Creates the Terrform Enterprise .terraformrc directory and inserts the token"
LABEL "com.github.actions.icon"="lock"
LABEL "com.github.actions.color"="purple"

RUN	apk add --no-cache bash

COPY create-terraformrc /usr/bin/create-terraformrc

ENTRYPOINT ["create-terraformrc"]
