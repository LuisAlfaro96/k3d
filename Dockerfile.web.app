FROM ruby:slim-trixie

WORKDIR /opt/test

RUN gem install webrick

COPY app.rb .
ENV PORT=4567
EXPOSE $PORT

CMD ["ruby", "app.rb"]
