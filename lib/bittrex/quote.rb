module Bittrex
  class Quote
    attr_reader :market, :bid, :ask, :last, :raw

    def initialize(market, attrs = {})
      @market = market
      return if attrs.nil?
      @bid = attrs['Bid']
      @ask = attrs['Ask']
      @last = attrs['Last']
      @raw = attrs
    end

    # Example:
    # Bittrex::Quote.current('BTC-HPY')
    def self.current(market)
      new(market, client.get('public/getticker', market: market))
    end

    private

    def self.client
      @client ||= Bittrex.client
    end
  end
end
