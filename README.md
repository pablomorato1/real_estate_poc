# Stepinvest

## Install dependencies

Ruby - Version specified on `.ruby-version` file
Node - Version specified on `.nvmrc` file
Redis - Must be running on port `6379`

In case you work at Windows OS download [that](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.0.0-1/rubyinstaller-devkit-3.0.0-1-x64.exe) bundle, other versions doesnt work well.

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
