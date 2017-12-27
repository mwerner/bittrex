require 'spec_helper'

describe Bittrex::Withdrawal do
  let(:data){ fixture(:withdrawal) }
  let(:subject){ Bittrex::Withdrawal.new(data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :id, 'c7f7b806-36cf-4xxx-b198-fcdeb1220762') }
    it { should_assign_attribute(subject, :currency, 'BTC') }
    it { should_assign_attribute(subject, :quantity, 0.0098) }
    it { should_assign_attribute(subject, :address, '14UKkY9xxxvk79X7u1zYpxxxRUEQ8F7Lh5') }
    it { should_assign_attribute(subject, :authorized, true) }
    it { should_assign_attribute(subject, :pending, false) }
    it { should_assign_attribute(subject, :canceled, false) }
    it { should_assign_attribute(subject, :invalid_address, false) }
    it { should_assign_attribute(subject, :transaction_cost, 0.0002) }
    it { should_assign_attribute(subject, :transaction_id, '0b34fc4xxx102d0f80efddafexxx6b77c6ce170100b2a579ab5b5f493a383392') }
    it { should_assign_attribute(subject, :executed_at, DateTime.parse('2014-06-26T05:37:55.083')) }
  end
end
