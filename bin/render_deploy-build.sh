set -o errexit


npm install 
npm run build 


bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
