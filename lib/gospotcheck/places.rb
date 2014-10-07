module GoSpotCheck

  class Places

    # define the path for GoSpotCheck API places queries
    # potential to further modify for use of different endpoints
    PATH = "/external/v1/"

    def initialize(connection)
      @connection = connection
    end

    def search(endpoint, params)
      options = {endpoint: endpoint}
      @connection.get PATH + options.fetch(:endpoint).to_s, params
    end

  end
end