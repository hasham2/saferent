require "saferent/version"
require "configatron"
require 'httparty'

module Saferent
  class Client
    include HTTParty
    base_uri 'consumers.residentscreening.net:443'

    def initialize(options = {})
      if options.key?(:account) && options.key?(:user_name) && options.key?(:password) && options.key?(:originator_id)
        configatron.account       = options[:account]
        configatron.user_name     = options[:user_name]
        configatron.password      = options[:password]
        configatron.originator_id = options[:originator_id]
      else
        raise ArgumentError
      end
    end

  end

end
