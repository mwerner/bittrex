module Bittrex
  module Helpers
    def extract_timestamp(value)
      return if value.nil? or value.strip.empty?
      Time.parse value
    end
  end
end
