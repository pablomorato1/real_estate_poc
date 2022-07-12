web: bundle exec rails server -p $PORT
worker: bundle exec rake jobs:work
release: bin/rake db:migrate
js: npm build --watch
css: npm build:css --watch
