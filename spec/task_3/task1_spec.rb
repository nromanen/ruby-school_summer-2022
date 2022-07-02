require_relative '../../task_3/task_1'

describe 'power of 2' do
  it 'should takes a non-negative integer n as input, and returns a list of all the powers of 2 with
      the exponent ranging from 0 to n' do
    expect(powers_of_two(0)).to eql([1])
    expect(powers_of_two(1)).to eql([1, 2])
    expect(powers_of_two(4)).to eql([1, 2, 4, 8, 16])
    expect { powers_of_two(-4) }.to raise_error(StandardError)
  end
end
