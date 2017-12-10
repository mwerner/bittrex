require 'spec_helper'

describe Bittrex::Summary do
  let(:data){ fixture(:summary) }
  let(:subject){ Bittrex::Summary.new(data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :name, 'LTC-ZEIT') }
    it { should_assign_attribute(subject, :high, 0.00000023) }
    it { should_assign_attribute(subject, :low, 0.00000020) }
    it { should_assign_attribute(subject, :volume, 1406611.43827056) }
    it { should_assign_attribute(subject, :last, 0.00000020) }
    it { should_assign_attribute(subject, :base_volume, 0.30179011) }
    it { should_assign_attribute(subject, :ask, 2.3e-07) }
    it { should_assign_attribute(subject, :bid, 2.0e-07) }
    it { should_assign_attribute(subject, :open_buy_orders, 7) }
    it { should_assign_attribute(subject, :open_sell_orders, 8) }
    it { should_assign_attribute(subject, :previous_day, 2.2e-07) }
    it { should_assign_attribute(subject, :updated_at, Time.parse('2014-06-26T05:22:57.673')) }
    it { should_assign_attribute(subject, :created_at, Time.parse('2014-03-01T21:00:00.000')) }
  end
end
