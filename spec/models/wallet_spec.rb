require 'spec_helper'

describe Bittrex::Wallet do
  let(:data){ fixture(:wallet) }
  let(:subject){ Bittrex::Wallet.new(data) }

  describe '#initialization' do
    it { should_assign_attribute(subject, :id, '3dab465d-d0f2-4xxx-819f-aafad450f05b') }
    it { should_assign_attribute(subject, :currency, 'CRYPT') }
    it { should_assign_attribute(subject, :balance, 115.0) }
    it { should_assign_attribute(subject, :available, 0.0) }
    it { should_assign_attribute(subject, :pending, 0.0) }
    it { should_assign_attribute(subject, :address, nil) }
    it { should_assign_attribute(subject, :requested, false) }
  end
end
