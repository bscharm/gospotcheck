require 'faraday'
require 'faraday_middleware'
require 'gospotcheck/configuration'
require 'gospotcheck/places'

module GoSpotCheck

  class Client
    # set the root host for the GoSpotCheck API
    API_HOST = "https://review.gospotcheck.com"

    attr_reader :configuration
    attr_writer :connection

    def initialize(options = nil)
      @configuration = nil

      unless options.nil?
        @configuration = Configuration.new(options)
        check_api_keys
      end

    end

    def configure
      @configuration = Configuration.new

      # yield to the configuration block in the Rails initializer
      yield(@configuration)

      check_api_keys
    end

    def check_api_keys
      # check for configuration, if it exists prevent further modification
      if configuration.nil? || !configuration.valid?
        @configuration = nil
      else
        @configuration.freeze
      end
    end

    def connection
      return @connection if instance_variable_defined?(:@connection)

      @connection = Faraday.new(API_HOST) do |conn|

        # uses the default Net::HTTP adapter
        conn.adapter Faraday.default_adapter
      end

      # set the Authorization header using the provided oauth token
      @connection.headers["Authorization"] = "Bearer #{@configuration.auth_keys[:oauth_token]}"
      @connection.headers["Content-Type"] = "application/json"

      # return an instance of a connection with desired settings
      @connection
    end

    def search(endpoint, params)
      @places = GoSpotCheck::Places.new(connection)
      @places.search(endpoint, params)
    end

  end

end