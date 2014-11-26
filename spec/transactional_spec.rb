require 'spec_helper'

describe 'transactional fixture management' do

  it 'removed records after each test' do
    expect(Category.count).to eq 0
    expect(Service::Category.count).to eq 0
    
    Category.create(val: 'Example')
    Service::Category.create(val: 'Example')
  end

end
