module APIHelper
  def should_assign_attribute(subject, method, value)
    subject.send(method).should eq(value)
  end
end

RSpec.configure do |config|
  config.extend APIHelper
end
