require 'json'
require 'simplecov'
SimpleCov.start

require 'rspec'
require 'bittrex'

Dir[File.join(Bittrex.root, 'spec/fixtures/**/*.rb')].each { |f| require f }
Dir[File.join(Bittrex.root, 'spec/support/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.before(:each) do
    Bittrex.stub(:client)
  end
end

def fixture(resource)
  path = File.join(Bittrex.root, "spec/fixtures/#{resource}.json")
  JSON.parse File.read(path)
end

def should_assign_attribute(subject, method, value)
  subject.send(method).should eq(value)
end
