require 'spec_helper'

describe Bittrex::Deposit do
  let(:data){ fixture(:deposit) }
  let(:subject){ Bittrex::Deposit.new(data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :id, 2045339) }
    it { should_assign_attribute(subject, :currency, 'BTC') }
    it { should_assign_attribute(subject, :quantity, 0.31074098) }
    it { should_assign_attribute(subject, :address, '17m3mcA3wo5kk637TgEysxxx2c89SDCRZDB') }
    it { should_assign_attribute(subject, :transaction_id, '416ba84218c178e7befbe22b23bf1123a23ec2bc68678586a27cebdxxxb6') }
    it { should_assign_attribute(subject, :confirmations, 2) }
    it { should_assign_attribute(subject, :executed_at, DateTime.parse('2014-06-16T22:57:17.457')) }
  end
end
