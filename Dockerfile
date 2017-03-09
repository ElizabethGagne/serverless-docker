FROM node:7.6.0-alpine

RUN apk add --no-cache --virtual .persistent-deps \
        curl \
        openssl \
        # for node-sass module
        make \
        gcc \
        g++ \
        python \
        py-pip \
        bash \
    # Install node packages
    && npm install --silent --save-dev -g \
        babel \
        babel-cli \
        gulp-babel \
        gulp-cli \
        bower \
        typescript \
        typings \
        webpack \
        serverless \
        ts-loader \
        json-loader \
        ts-node \
        serverless-webpack \
        tslint \
        tslint-config-olo \
        mocha \
        chai \
        karma \
        karma-typescript-preprocessor2 \
        karma-webpack \
        karma-chai \
        karma-mocha \
        phantomjs \
        phantomjs-prebuilt \
        karma-phantomjs-launcher \
        request \
        aws-sdk \
        aws-lambda \
        uuid \
        @types/aws-sdk \
        @types/aws-lambda \
        @types/core-js


# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

EXPOSE 8000

CMD ["npm", "-v"]
