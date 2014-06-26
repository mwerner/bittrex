module Bittrex
  class Withdrawl
    attr_reader :id, :currency, :quantity, :address, :authorized,
                :pending, :canceled, :invalid_address,
                :transaction_cost, :transaction_id, :executed_at

    def initialize(attrs = {})
      @id = attrs['PaymentUuid']
      @currency = attrs['Currency']
      @quantity = attrs['Amount']
      @address = attrs['Address']
      @authorized = attrs['Authorized']
      @pending = attrs['PendingPayment']
      @canceled = attrs['Canceled']
      @invalid_address = attrs['Canceled']
      @transaction_cost = attrs['TxCost']
      @transaction_id = attrs['TxId']
      @executed_at = Time.parse(attrs['Opened'])
    end

    def self.all
      client.get('account/getwithdrawalhistory').map{|data| new(data) }
    end

    private

    def self.client
      @client ||= Bittrex.client
    end
  end
end
