require 'spec_helper'

RSpec.describe OmniAuth::Strategies::Freeagent do
  subject { described_class.new(nil, @options || {}) }

  it 'has the correct site' do
    expect(subject.options.client_options.site).to eql 'https://api.freeagent.com'
  end

  it 'has the correct auth URL' do
    expect(subject.options.client_options.authorize_url).to eql '/v2/approve_app'
  end

  it 'has the correct token URL' do
    expect(subject.options.client_options.token_url).to eql '/v2/token_endpoint'
  end
end
