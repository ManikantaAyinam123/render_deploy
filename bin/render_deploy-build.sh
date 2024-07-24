set -o errexit

# Navigate to client directory and install dependencies
npm install --prefix client

# Build the client-side assets
npm run build --prefix client

# Navigate back to the root directory
cd ..

# Install server-side dependencies
bundle install

# Precompile Rails assets
bundle exec rails assets:precompile

# Clean up old assets
bundle exec rails assets:clean
