require 'gospotcheck/version'
require 'gospotcheck/client'

module GoSpotCheck

    def self.client
      @client ||= GoSpotCheck::Client.new
    end

end
