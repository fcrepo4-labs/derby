require 'spec_helper'

describe 'Derby' do
  it 'has a version' do
    expect(Derby::VERSION.to_s).to match /\d+\.\d+\.\d+/
  end
end
