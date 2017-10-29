module Bittrex
  class Order
    include Helpers

    attr_reader :type, :id, :limit, :opened_at, :closed_at,
                :exchange, :price, :quantity, :remaining, :commission,
                :total, :fill, :executed_at, :raw

    def initialize(attrs = {})
      @id = attrs['Id'] || attrs['OrderUuid']
      @type = (attrs['Type'] || attrs['OrderType']).to_s.capitalize
      @exchange = attrs['Exchange']
      @quantity = attrs['Quantity']
      @remaining = attrs['QuantityRemaining']
      @price = attrs['Rate'] || attrs['Price']
      @total = attrs['Total']
      @fill = attrs['FillType']
      @limit = attrs['Limit']
      @commission = (attrs['Commission'] || attrs['CommissionPaid']).to_f
      @raw = attrs
      @opened_at = extract_timestamp(attrs['Opened'])
      @executed_at = extract_timestamp(attrs['TimeStamp'])
      @closed_at = extract_timestamp(attrs['Closed'])
    end

    def self.book(market, type, depth = 50)
      orders = []

      if type.to_sym == :both
        orderbook(market, type.downcase, depth).each_pair do |type, values|
          values.each do |data|
            orders << new(data.merge('Type' => type))
          end
        end
      else
        orderbook(market, type.downcase, depth).each do |data|
          orders << new(data.merge('Type' => type))
        end
      end

      orders
    end

    def self.open
      client.get('market/getopenorders').map{|data| new(data) }
    end

    def self.history
      client.get('account/getorderhistory').map{|data| new(data) }
    end

    private

    def self.orderbook(market, type, depth)
      client.get('public/getorderbook', {
        market: market,
        type: type,
        depth: depth
      })
    end

    def self.client
      @client ||= Bittrex.client
    end
  end
end
