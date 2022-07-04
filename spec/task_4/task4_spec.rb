require_relative '../../task_4/inventory'

class Test
  include Inventory
end

describe 'Inventory' do
  it 'should return hash with products and amount of products' do
    expect(Test.new.warehouse([])).to eql({})
    expect(Test.new.warehouse(['one -18', 'two - 3'])).to eql({ one: 18, two: 3 })
    expect(Test.new.warehouse(['one -18', 'two - 3', 'one-2'])).to eql({ one: 20, two: 3 })
  end
end
