require "rubygems"
require "date"
require "saferent/version"
require "saferent/client"
require "saferent/request"
require "saferent/response"
require "saferent/exceptions"
require "configatron"
require 'httparty'

module Saferent
  class Client
    include HTTParty

    base_uri 'consumers.residentscreening.net:443'
    
    attr_accessor :account, :user_name, :password, :originator_id
    
    def initialize(options = {})
      if options.key?(:account) && options.key?(:user_name) && options.key?(:password) && options.key?(:originator_id)
        self.account       = options[:account]
        self.user_name     = options[:user_name]
        self.password      = options[:password]
        self.originator_id = options[:originator_id]
      else
        raise ArgumentError
      end
    end

  end

end
