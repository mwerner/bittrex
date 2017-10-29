module Bittrex
  class Summary
    include Helpers

    attr_reader :name, :high, :low, :volume, :last, :base_volume, :raw, :created_at

    alias_method :vol, :volume
    alias_method :base_vol, :base_volume

    def initialize(attrs = {})
      @name        = attrs['MarketName']
      @high        = attrs['High']
      @low         = attrs['Low']
      @volume      = attrs['Volume']
      @last        = attrs['Last']
      @base_volume = attrs['BaseVolume']
      @raw         = attrs
      @created_at  = extract_timestamp(attrs['TimeStamp'])
    end

    def self.all
      client.get('public/getmarketsummaries').map{|data| new(data) }
    end

    private

    def self.client
      @client ||= Bittrex.client
    end
  end
end
