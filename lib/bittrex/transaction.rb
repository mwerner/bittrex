module Bittrex
  class Transaction
    include Helpers

    attr_reader :uuid

    def initialize(attrs = {})
      @uuid = attrs['uuid']
    end

    # parameter required  description: 
    # market:  required  a string literal for the market (ex: BTC-LTC)
    # quantity:  required  the amount to purchase (how much LTC do you want to buy?) (UNITS)
    # rate:  required the rate at which to place the order. (from the PRICE dropdown. BTC per ETH)
                                        # 1145 USD(ETH price) = 0.07162(BTC per ETH) * 16000 USD(BTC price)

    # https://bittrex.com/api/v1.1/market/buylimit?apikey=API_KEY&market=BTC-LTC&quantity=1.2&rate=1.3  
    def self.buy(market,quantity,rate)
      client.get('market/buylimit', {market: market, quantity: quantity, rate: rate})
    end

    def self.sell(market,quantity,rate)
      # client.get('market/selllimit').map{|data| new(data) }
      client.get('market/selllimit', {market: market, quantity: quantity, rate: rate})
    end

    def self.cancel_order(uuid)
      client.get('market/cancel', {uuid: uuid})
    end

    def self.get_order(uuid)
      client.get('account/getorder', {uuid: uuid})
    end


    private

    def self.client
      @client ||= Bittrex.client
    end
  end
end