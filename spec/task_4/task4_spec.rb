require_relative '../../task_4/inventory'

describe 'Inventory' do
  it 'should return hash with products and amount of products' do
    expect(Inventory.warehouse([])).to eql({})
    expect(Inventory.warehouse(['one -18', 'two - 3'])).to eql({ one: 18, two: 3 })
    expect(Inventory.warehouse(['one -18', 'two - 3', 'one-2'])).to eql({ one: 20, two: 3 })
  end
end
