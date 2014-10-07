def connection(options = {})
  defaults = {:endpoint => :places}
  defaults.merge!(options)
  Faraday.new('http://private-anon-46d290685-gsc.apiary-mock.com/external/v1/' + defaults[:endpoint].to_s) do |conn|
    conn.adapter Faraday.default_adapter
  end
end