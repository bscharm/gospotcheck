# Gospotcheck

## Description

A gem to interact with the GoSpotCheck API. For more information on the GoSpotCheck API please see their [documentation](http://docs.gsc.apiary.io/).

## Installation

Add this line to your application's Gemfile:

```ruby
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gospotcheck

## Usage

### On a Rails project

Create a file in your config/intializers directory called gospotcheck.rb which includes the following code:

```
GoSpotCheck.client.configure do |config|
  config.oauth_token = ENV['YOUR_GOSPOTCHECK_OAUTH_TOKEN']
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gospotcheck/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
