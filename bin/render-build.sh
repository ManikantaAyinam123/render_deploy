set -o errexit 
npm install --prefix client && npm run build --prefix client

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean