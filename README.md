# quotes

Turbo Rails and Hotwire from [Turbo Rails Tutorial](https://www.hotrails.dev/turbo-rails)

[![Build Status](https://app.travis-ci.com/snepote/quotes.svg?branch=main)](https://app.travis-ci.com/snepote/quotes)

|  Dependency | Version |
| ----------- | ------- |
| Ruby        | 3.0.4   |
| Rails       | 7.0.0   |
| Bundler     | 2.2.33  |

## Setup
### Install dependencies
1. Make sure `yarn` is installed
2. Install the gems, the JavaScript dependencies, create, migrate and seed the database
```shell
bin/setup
```
3. Additional steps required (at least on macOS Monterrey running as x86)
```shell
bin/rails css:install:sass
yarn add @hotwired/turbo-rails
bin/rails javascript:install:esbuild
```

### Create models
These steps has been completed and are here only as a reference.
Create the Quote model with a name attribute and its associated migration file.
**As we already generated the fixture file, type "n" for "no" when asked to override it**
```shell
rails generate model Quote name:string
```

### Run db migrations
```shell
bin/rails db:migrate
```

### Adding routes and CRUD controller + actions
```shell
bin/rails generate controller Quotes
```

### Install simple-form
```shell
bin/rails generate simple_form:install
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

## Turbo Streams
### Disable Turbo
```javascript
// app/javascript/application.js
import "./controllers"

// The two following lines disable Turbo on the whole application
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
```

### Security
#### Models
Make sure to use the correct configuration in
```ruby
broadcasts_to
```

## Stimulus
### Create controller
```shell
bin/rails generate stimulus [CONTROLLER_NAME]
```

### Remove a controller
```shell
bin/rails destroy stimulus [CONTROLLER_NAME]
```
Note: please make sure that the corresponding lines are removed from `app/javascript/controllers/index.js`

### Link JavaScript behavior defined in Stimulus Controllers to HTML
Thanks to naming conventions on data attributes, use:
```html
<div data-controller="[CONTROLLER_NAME]" data-action="animationend->[CONTROLLER_NAME]#[METHOD]>
</div>
```
Here I suppose `animationend` is the event trigger

## Testing
### Create tests
For a `quotes` (CRUD) resource
```shell
bin/rails g system_test quotes
```

### Populate seeds for `development`
```shell
bin/rails db:seed
```

### Create development data from your fixtures files
This is now set up in `db/seeds.rb`
```shell
bin/rails db:fixtures:load
```

### Run tests
#### Feature tests
```shell
bin/rails test:system
```
#### All tests
```shell
bin/rails test:all
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
