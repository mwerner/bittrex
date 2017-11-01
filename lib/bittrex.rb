require "bittrex/version"

module Bittrex
  autoload :Market,        'bittrex/market'
  autoload :Client,        'bittrex/client'
  autoload :Configuration, 'bittrex/configuration'
  autoload :Currency,      'bittrex/currency'
  autoload :Deposit,       'bittrex/deposit'
  autoload :Order,         'bittrex/order'
  autoload :Quote,         'bittrex/quote'
  autoload :Summary,       'bittrex/summary'
  autoload :Wallet,        'bittrex/wallet'
  autoload :Withdrawal,    'bittrex/withdrawal'

  def self.client
    @client ||= Client.new(configuration.auth)
  end

  def self.config
    yield configuration
    @client = Client.new(configuration.auth)
  end

  def self.configuration
    Configuration.instance
  end

  def self.root
    File.expand_path('../..', __FILE__)
  end
end
