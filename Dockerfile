FROM python:alpine3.19

RUN apk update \
 && apk --no-cache --no-progress add \
 	git curl tzdata

ENV PROFILARR_URL=https://github.com/santiagosayshey/Profilarr.git

#install required packages
RUN git clone "$PROFILARR_URL"

ENTRYPOINT ["tail", "-f", "/dev/null"]
