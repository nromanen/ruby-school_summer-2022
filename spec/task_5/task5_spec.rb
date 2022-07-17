require_relative '../../task_5/task'

describe 'Calculate' do
  it 'should calculate lower and upper scores' do
    expect(calculate_low_high_score(100, 10, 15)).to eql([10, 85])
    expect(calculate_low_high_score(200, 10, 15)).to eql([20, 170])
    expect(calculate_low_high_score(1000, 20, 5)).to eql([200, 950])
  end
end

describe 'Split text' do
  it "should split text to array of arrays [['name', 'score'], ['name2', 'score2']" do
    expect(split_text("Anna,90\nAnton,40\nMary,87")).to eql([['Anna', 90], ['Anton', 40], ['Mary', 87]])
    expect(split_text('Anna,90')).to eql([['Anna', 90]])
    expect(split_text('')).to eql([])
  end
end

describe 'Sort list' do
  it 'should sort list by score and alphabet' do
    list = [['Anna', 90], ['Anton', 40], ['Mary', 87]]
    expect(sort_list(list)).to eql([['Anna', 90], ['Mary', 87], ['Anton', 40]])
    list = [['Anna', 90], ['Olga', 100], ['Max', 90]]
    expect(sort_list(list)).to eql([['Olga', 100], ['Anna', 90], ['Max', 90]])
    list = [['Max', 90], ['Alina', 40], ['Anna', 90]]
    expect(sort_list(list)).to eql([['Anna', 90], ['Max', 90], ['Alina', 40]])
    expect(sort_list([])).to eql([])
    expect(sort_list([['Dina', 97], ['Tanya', 97], ['Mary', 97]])).to eql([['Dina', 97], ['Mary', 97], ['Tanya', 97]])
  end
end

describe 'Put in hash' do
  it 'should put values from array depending on two values' do
    list = [['Anna', 90], ['Mary', 64], ['Anton', 15]]
    expect(put_in_hash(list, 15, 90)).to eql({ top: ['Anna'], middle: ['Mary'], low: ['Anton'] })
    expect(put_in_hash(list, 20, 60)).to eql({ top: %w[Anna Mary], middle: [], low: ['Anton'] })
    expect(put_in_hash([], 20, 60)).to eql({ top: [], middle: [], low: [] })
  end
end

describe 'Categorize' do
  it 'should convert the string into a hash and categorize the value into 3 groups' do
    text = "Tanya, 97\nDina, 97\nMary, 86\nMax, 67\nAndry, 70\nTom, 10\nLary, 10"
    result = categorize_students(100, 15, 15, text)
    expected = { top: %w[Dina Tanya Mary], middle: %w[Andry Max], low: %w[Lary Tom] }
    expect(result).to eql(expected)
    text = "Mary, 100\nTonny, 100\nOlga, 90\nSonia, 74\nDasha, 90\nNataly, 65\nMaria,24\n" \
           "Tanya, 30\nLisa, 8\nJohn, 12\nAlex, 12\nDavid, 74\nAnna, 100"
    result = categorize_students(100, 15, 10, text)
    expected = { top: %w[Anna Mary Tonny Dasha Olga],
                 middle: %w[David Sonia Nataly Tanya Maria], low: %w[Alex John Lisa] }
    expect(result).to eql(expected)
  end
end
