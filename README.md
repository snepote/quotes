# quotes

Turbo Rails and Hotwire from [Turbo Rails Tutorial](https://www.hotrails.dev/turbo-rails)

|  Dependency | Version |
| ----------- | ------- |
| Ruby        | 3.0.4   |
| Rails       | 7.0.0   |
| Bundler     | 2.2.33  |

## Setup
### Install dependencies
Install the gems, the JavaScript dependencies, create, migrate and seed the database
```shell
bin/setup
```

### Run the rails server, and the scripts that precompile the CSS and the JavaScript code
The bin/dev script installs foreman locally and runs the application based on the Procfile.dev file.
```shell
bin/dev
```
When running the bin/dev command, we are running three commands at once:
```yml
# Procfile.dev

web: bin/rails server -p 3000
js: yarn build --watch
css: yarn build:css --watch
```

## Project creation
This is **NO** longer necessary and it's just here for reference purpose.
```shell
bundle exec rails new . \
  --css=sass \
  --javascript=esbuild \
  --database=postgresql \
  --force
```
