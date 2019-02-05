FROM alpine:3.6

RUN apk update && apk --update add ruby ruby-irb ruby-json ruby-rake \
  ruby-bigdecimal ruby-io-console libstdc++ tzdata ruby-rdoc sqlite-libs nodejs

COPY Gemfile /app/
COPY Gemfile.lock /app/
 
RUN apk --update add --virtual build-dependencies build-base ruby-dev openssl-dev sqlite-dev \
  libc-dev linux-headers libffi-dev && \
  gem install bundler && \
  cd /app ; bundle install && \
  apk del build-dependencies

COPY . /app
RUN chown -R nobody:nogroup /app
USER nobody

WORKDIR /app

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
