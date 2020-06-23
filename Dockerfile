FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install


# Dockerfileだけで起動する際のコマンドは
# docker run -v ~/Users/admin/projects/docker-practice/product-register:/product-register -p 3000:3000 -it 9ef073dc8318
# 長いので、docker-composeを書こう！
