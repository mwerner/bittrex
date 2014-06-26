require 'spec_helper'

describe Bittrex::Market do
  let(:data){ fixture(:market) }
  let(:subject){ Bittrex::Market.new(data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :name, 'BTC-LTC') }
    it { should_assign_attribute(subject, :currency, 'LTC') }
    it { should_assign_attribute(subject, :base, 'BTC') }
    it { should_assign_attribute(subject, :currency_name, 'Litecoin') }
    it { should_assign_attribute(subject, :base_name, 'Bitcoin') }
    it { should_assign_attribute(subject, :minimum_trade, 0.01) }
    it { should_assign_attribute(subject, :active, true) }
    it { should_assign_attribute(subject, :created_at, Time.parse('2014-02-13T00:00:00')) }
  end
end
