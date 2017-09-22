# Bittrex

Unofficial gem for the Bittrex API
Tested with Ruby MRI 2.3.3 and 2.4.1

## Installation

Add this line to your application's Gemfile:

    gem 'bittrex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bittrex

## Usage

The gem uses a simple mapping of API resources to models, with a majority of the attributes mapped to corresponding attributes on the corresponding class. There are some translations into a more "rubyish" verbage, but for the most part things are directly mapped.

    require 'rubygems'
    require 'bittrex'
    >> Quote.current('BTC-LTC')
    #=> #<Bittrex::Quote:0x000001015cd058 @market="BTC-LTC", @bid=0.015792, @ask=0.01602899, @last=0.015792, @raw={"Bid"=>0.015792, "Ask"=>0.01602899, "Last"=>0.015792}>

## Authentication

You can authenticate access to your Bittrex account by configuring your implementation of the bittrex gem. This is accomplished by using a config block at the top of your application.

Set up your keys at: https://bittrex.com/Manage#sectionApi

    Bittrex.config do |c|
      c.key = 'my_api_key'
      c.secret = 'my_api_secret'
    end

## Development

You can test out public API calls any time by running `bundle exec rake bittrex:console` and inputting your method.

If you want to test private API calls, you will need to create `config/application.yml` and add your Bittrex keys to it (`config/application.yml.example` provides a template for this).

Once you've added the API keys, run `bundle exec rake bittrex:console`

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bittrex/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
