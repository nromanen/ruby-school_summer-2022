require_relative '../../task_3/task_2'

describe 'Square(n) Sum' do
  it 'should squares each number passed into it and then sums the results together' do
    expect(square_sum([1, 2])).to eql(5)
    expect(square_sum([0, 3, 4, 5])).to eql(50)
    expect(square_sum([])).to eql(0)
    expect(square_sum([-1, -2])).to eql(5)
    expect(square_sum([-1, 0, 1])).to eql(2)
  end
end
