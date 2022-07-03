require_relative '../../task_3/task_6'

describe 'To square(root) or not to square(root)' do
  it 'should return square root if the number has one, otherwise square the number' do
    expect(square_or_square_root([4, 3, 9, 7, 2, 1])).to eql([2, 9, 3, 49, 4, 1])
    expect(square_or_square_root([100, 101, 5, 5, 1, 1])).to eql([10, 10_201, 25, 25, 1, 1])
    expect(square_or_square_root([1, 2, 3, 4, 5, 6])).to eql([1, 4, 9, 2, 25, 36])
  end
end
