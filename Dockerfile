FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.5.0

RUN gem install bashcov --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bashcov"]
CMD ["--help"]
