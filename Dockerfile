FROM ruby:3.1.1

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

ADD . /Rails-Docker
WORKDIR /Rails-Docker
RUN bundle install

EXPOSE 3001

CMD ["bash"]