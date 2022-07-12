# Stepinvest

## Install dependencies

Ruby - Version specified on `.ruby-version` file
Node - Version specified on `.nvmrc` file
Redis - Must be running on port `6379`

## Install gems / modules:

```
gem install bundler
bundle install

npm install
```

## Setup

### Load frontend dependecies (must rerun everytime you change any file)
```
npm run build
npm run build:css
```

### Create database
```
rake db:create
rake db:schema:load
```

## Start development environment

```
rails s
```
