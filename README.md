# quotes

Turbo Rails and Hotwire from [Turbo Rails Tutorial](https://www.hotrails.dev/turbo-rails)

## Dependencies

|  Dependency | Version |
| ----------- | ------- |
| Ruby        | 3.0.4   |
| Rails       | 7.0.0   |
| Bundler     | 2.2.33  |

## Setup
### Install dependencies
```shell
bin/setup
```

### Run the rails server, and the scripts that precompile the CSS and the JavaScript code
```shell
bin/dev
```

## Project creation ([x] done, do **NOT** do it again)
```shell
bundle exec rails new . \
  --css=sass \
  --javascript=esbuild \
  --database=postgresql \
  --force
```
