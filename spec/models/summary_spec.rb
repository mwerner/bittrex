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
    it { should_assign_attribute(subject, :created_at, Time.parse('2014-06-26T05:22:57.673')) }
  end
end
