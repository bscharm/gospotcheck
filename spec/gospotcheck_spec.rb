require 'spec_helper'

describe GoSpotCheck do

  before(:all) do
    @client = GoSpotCheck::Client.new({oauth_token: 'test'})
    @client.connection = connection
  end

  let(:status_code) {JSON.parse(@client.search(:places, {'name.eq' => ''}).body)['request']['status_code']}

  it 'responds to search' do
    expect(@client).to respond_to(:search)
  end

  it 'returns the correct response' do
    expect(@client.search(:places, {'name.eq' => ''})).to be_an_instance_of(Faraday::Response)
    expect(status_code).to eq(200)
  end


end