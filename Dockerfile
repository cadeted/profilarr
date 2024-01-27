FROM python:alpine3.19

RUN apt get update \
 && apt get -y install --no-install-recommends \
 	git curl tzdata\
 && rm -rf /var/lib/apt/lists

ENV PROFILARR_URL=https://github.com/santiagosayshey/Profilarr.git

#install required packages
RUN git clone "$PROFILARR_URL"

ENTRYPOINT ["tail", "-f", "/dev/null"]
