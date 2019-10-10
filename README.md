# Headlines

This gem scrapes news sources online, lists the names and url's of the sources, and prompts the user to choose a source. Once a source is selected it displays headlines from the selected source and the user can choose a headline to see the source again and the link to the chosen article. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'headlines'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install headlines

To run the cli execute:

    $ ./bin/headlines

This will run the call method in lib/headlines/cli.rb

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[jcguest]/headlines. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

