require_relative '../../task_3/task_3'

describe 'city' do
  it 'should return string' do
    expect(say_hello(%w[John Smith], 'Phoenix', 'Arizona')).to eql('Hello, John Smith! Welcome to Phoenix, Arizona!')
    expect(say_hello(%w[Harry James Potter], 'Chicago',
                     'Illinois')).to eql('Hello, Harry James Potter! Welcome to Chicago, Illinois!')
    expect(say_hello(['Tom'], 'Baltimore', 'Maryland')).to eql('Hello, Tom! Welcome to Baltimore, Maryland!')
  end
end
