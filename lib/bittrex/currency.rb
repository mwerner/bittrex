module Bittrex
  class Currency
    attr_reader :name, :abbreviation, :minimum_confirmation, :transaction_fee, :active, :raw

    alias_method :min_confirmation, :minimum_confirmation
    alias_method :fee, :transaction_fee

    def initialize(attrs = {})
      @name = attrs['CurrencyLong']
      @abbreviation = attrs['Currency']
      @transaction_fee = attrs['TxFee']
      @minimum_confirmation = attrs['MinConfirmation']
      @active = attrs['IsActive']
      @raw = attrs
    end

    def self.all
      client.get('public/getcurrencies').map{|data| new(data) }
    end

    private

    def self.client
      @client ||= Bittrex.client
    end
  end
end
