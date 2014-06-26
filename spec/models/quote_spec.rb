require 'spec_helper'

describe Bittrex::Quote do
  let(:data){ fixture(:quote) }
  let(:subject){ Bittrex::Quote.new('BTC-HPY', data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :market, 'BTC-HPY') }
    it { should_assign_attribute(subject, :bid, 0.01607601) }
    it { should_assign_attribute(subject, :ask, 0.01633299) }
    it { should_assign_attribute(subject, :last, 0.01635099) }
  end
end
