require 'spec_helper'

describe Bittrex::Configuration do
  context 'defaults' do
    it 'is a hash of default configuration' do
      expect(Bittrex::Configuration.defaults).to be_kind_of(Hash)
    end
  end

  context 'access' do
    it 'is callable from .config' do
      Bittrex.config do |c|
        expect(c).to be_kind_of(Bittrex::Configuration)
      end
    end

    context 'options' do
      let(:map) { { 'user' => { a: 1 } } }
      let(:api_key) { 'my_special_key' }

      it 'is able to set the options_key' do
        Bittrex.config { |config| config.key = api_key }
        expect(Bittrex.configuration.key).to eq(api_key)
      end
    end
  end
end
