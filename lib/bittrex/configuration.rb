require 'singleton'

module Bittrex
  class Configuration
    include Singleton

    attr_accessor :key, :secret

    @@defaults = {
      key: nil,
      secret: nil
    }

    def self.defaults
      @@defaults
    end

    def initialize
      reset
    end

    def auth
      {
        key: key,
        secret: secret
      }
    end

    def reset
      @@defaults.each_pair { |k, v| send("#{k}=", v) }
    end
  end
end
