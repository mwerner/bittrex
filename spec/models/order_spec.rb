require 'spec_helper'

describe Bittrex::Order do
  let(:data){ fixture(:order) }
  let(:subject){ Bittrex::Order.new(data) }

  attr_reader :type, :id, :quantity, :rate, :total, :fill, :raw, :executed_at, :commission, :opened_at, :closed_at

  describe "closed order" do
    context '#initialization' do
      it { should_assign_attribute(subject, :id, '1af0399d-e845-4xxx-9d85-aa332d831e95') }
      it { should_assign_attribute(subject, :type, 'Limit_sell') }
      it { should_assign_attribute(subject, :exchange, 'BTC-HPY') }
      it { should_assign_attribute(subject, :quantity, 371810.26006413) }
      it { should_assign_attribute(subject, :remaining, 371810.26006413) }
      it { should_assign_attribute(subject, :limit, 0.00000016) }
      it { should_assign_attribute(subject, :price, 0.0) }
      it { should_assign_attribute(subject, :total, nil) }
      it { should_assign_attribute(subject, :fill, nil) }
      it { should_assign_attribute(subject, :executed_at, DateTime.parse('2014-06-21T04:08:08.75')) }
      it { should_assign_attribute(subject, :opened_at, nil) }
      it { should_assign_attribute(subject, :closed_at, nil) }
    end
  end

  describe "open order" do
    let(:data) { fixture(:open_order) }

    context '#initialization' do
      it { should_assign_attribute(subject, :id, '1af0399d-e845-4xxx-9d85-aa332d831e95') }
      it { should_assign_attribute(subject, :type, 'Limit_sell') }
      it { should_assign_attribute(subject, :exchange, 'BTC-HPY') }
      it { should_assign_attribute(subject, :quantity, 371810.26006413) }
      it { should_assign_attribute(subject, :remaining, 371810.26006413) }
      it { should_assign_attribute(subject, :limit, 0.00000016) }
      it { should_assign_attribute(subject, :commission, 0.0) }
      it { should_assign_attribute(subject, :price, 0.0) }
      it { should_assign_attribute(subject, :total, nil) }
      it { should_assign_attribute(subject, :fill, nil) }
      it { should_assign_attribute(subject, :executed_at, nil) }
      it { should_assign_attribute(subject, :opened_at, DateTime.parse('2014-06-21T04:08:08.75')) }
      it { should_assign_attribute(subject, :closed_at, DateTime.parse('2014-06-22T04:08:08.75')) }
    end
  end
end
