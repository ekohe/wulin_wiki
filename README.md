# WulinWiki

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'wulin_wiki'

And then execute:

    $ bundle

## Usage

1. Run below rake task to copy migration files to your application:

    rake wulin_wiki_engine:install:migrations

2. Run db:migrate

    rake db:migrate

3. Activate wiki action in your grid

```ruby
#app/screens/example_grid.rb
class ExampleGrid < WulinMaster::Grid
  action :wiki
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
