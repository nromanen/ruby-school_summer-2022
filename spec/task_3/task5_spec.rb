require_relative '../../task_3/task_5'

describe 'Testing 1-2-3' do
  it 'should takes a list of strings and returns each line prepended by the correct number.' do
    expect(number([])).to eql([])
    expect(number(%w[a b c])).to eql(['1: a', '2: b', '3: c'])
    expect(number(%w[a b c d e])).to eql(['1: a', '2: b', '3: c', '4: d', '5: e'])
  end
end
