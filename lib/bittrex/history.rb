module Bittrex
  class History
    attr_reader :created_at, :price, :total, :raw

    def initialize(attrs = {})
      @created_at = Time.parse(attrs['TimeStamp'])
      @price = attrs['Price']
      @total = attrs['Total']
      @raw = attrs
    end

    def self.get(market)
      client.get('public/getmarkethistory',{market: market}).map{|data| new(data) }
    end

    private

    def self.client
      @client ||= Bittrex.client
    end
  end
end
