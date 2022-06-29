require_relative '../../task_2/name'

describe 'name' do
  it 'should return true, when name is in correct format' do
    expect(Name.validate_name('Анна-Марія')).to eql(true)
    expect(Name.validate_name('ААнна-Марія')).to eql(false)
    expect(Name.validate_name('Анна_Марія')).to eql(false)
    expect(Name.validate_name('Анна-Марія1')).to eql(false)
    expect(Name.validate_name('Анна1-Марія1')).to eql(false)
    expect(Name.validate_name('Анна')).to eql(true)
    expect(Name.validate_name('аНна')).to eql(false)
    expect(Name.validate_name('Анннннннннннннннннннна-Марія')).to eql(false)
    expect(Name.validate_name('Анна-Маррррррррррррррррррррррррррррія')).to eql(false)
    expect(Name.validate_name('А-А')).to eql(true)
    expect(Name.validate_name('Анна-')).to eql(false)
    expect(Name.validate_name('-Aнна')).to eql(false)
    expect(Name.validate_name('')).to eql(false)
    expect(Name.validate_name('66-66')).to eql(false)

    expect(Name.validate_name('Anna')).to eql(true)
    expect(Name.validate_name('Anna-Maria')).to eql(true)
    expect(Name.validate_name('Anna-mAria')).to eql(false)
    expect(Name.validate_name('anna-mAria')).to eql(false)
  end
end
