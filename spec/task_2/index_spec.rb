require_relative '../../task_2/index'

describe 'uppercase_index' do
  it 'should return index of first uppercase letter' do
    expect(Index.uppercase_index('aaaAaaa')).to eql(3)
    expect(Index.uppercase_index('AaaA')).to eql(0)
    expect(Index.uppercase_index('')).to eql(nil)
    expect(Index.uppercase_index('aaa')).to eql(nil)
  end
end

describe 'lowercase_index' do
  it 'should return index of first lowercase letter' do
    expect(Index.lowercase_index('aaaAaaa')).to eql(0)
    expect(Index.lowercase_index('AaaA')).to eql(1)
    expect(Index.lowercase_index('')).to eql(nil)
    expect(Index.lowercase_index('AAA')).to eql(nil)
  end
end

describe 'digital_index' do
  it 'should return index of first digital' do
    expect(Index.digit_index('aaa5aa')).to eql(3)
    expect(Index.digit_index('55555')).to eql(0)
    expect(Index.digit_index('')).to eql(nil)
    expect(Index.digit_index('AAA')).to eql(nil)
  end
end

describe 'symbol_index' do
  it 'should return index of first special symbol' do
    expect(Index.symbol_index('aaa;aaa')).to eql(3)
    expect(Index.symbol_index('44?44')).to eql(2)
    expect(Index.symbol_index('')).to eql(nil)
    expect(Index.symbol_index('AAA')).to eql(nil)
  end
end

describe 'task_test' do
  it 'should return result in format uppercaseIndex_lowercaseIndex_digitIndex_symbolIndex' do
    expect(Index.task('abc1')).to eql('_0_3_')
    expect(Index.task('#####')).to eql('___0')
    expect(Index.task('Aa1;')).to eql('0_1_2_3')
    expect(Index.task('')).to eql('___')
  end
end
