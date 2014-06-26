require 'spec_helper'

describe Bittrex::Currency do
  let(:data){ fixture(:currency) }
  let(:subject){ Bittrex::Currency.new(data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :name, 'Bitcoin') }
    it { should_assign_attribute(subject, :abbreviation, 'BTC') }
    it { should_assign_attribute(subject, :transaction_fee, 0.00000008) }
    it { should_assign_attribute(subject, :minimum_confirmation, 5) }
    it { should_assign_attribute(subject, :active, true) }
  end
end
