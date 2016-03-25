FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev && \
    gem install gollum redcarpet org-ruby asciidoctor

VOLUME /wiki
WORKDIR /wiki

ENTRYPOINT ["gollum"]

EXPOSE 4567
