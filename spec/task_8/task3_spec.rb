require_relative '../../task_8/task_3/pizza'

describe 'Pizza' do
  it 'should return information if diagonal is correct and return number of fails' do
    pizza1 = Pizza.new(10, %w[mushroom cheese])
    pizza2 = Pizza.new(25, %w[mushroom cheese cherry])
    pizza3 = Pizza.new(50, ['mushroom'])
    pizza4 = Pizza.new(100, %w[mushroom cheese cherry])

    expect(pizza1.to_s).to eql('0 : diagonal - 0, ingredients - []')
    expect(pizza2.to_s).to eql('1 : diagonal - 25, ingredients - ["mushroom", "cheese", "cherry"]')
    expect(pizza3.to_s).to eql('2 : diagonal - 50, ingredients - ["mushroom"]')
    expect(pizza4.to_s).to eql('0 : diagonal - 0, ingredients - []')
    expect(pizza4.to_s).to eql('0 : diagonal - 0, ingredients - []')
    expect(Pizza.fail_instance).to eql(2)
  end
end
