require_relative '../../task_8/task_1/mark'
require_relative '../../task_8/task_1/student'

describe 'Marks and students - exist' do
  it 'should check if mark exist for student' do
    mark1 = Mark.new('JavaScript', 4)
    mark2 = Mark.new('Java', 4)
    mark3 = Mark.new('English', 5)
    mark4 = Mark.new('English', 2)

    student = Student.new('Anna')

    student.add_mark(mark1)
    student.add_mark(mark2)
    student.add_mark(mark3)
    student.add_mark(mark4)

    expect(student.exists?('C++')).to eql(false)
    expect(student.exists?('Java')).to eql(true)
  end
end

describe 'Marks and students - add_mark' do
  it 'should does\nt add subject if subject with this name already exist' do
    mark1 = Mark.new('JavaScript', 4)
    mark2 = Mark.new('Java', 4)
    mark3 = Mark.new('English', 5)
    mark4 = Mark.new('English', 2)

    student = Student.new('Anna')

    student.add_mark(mark1)
    student.add_mark(mark2)
    student.add_mark(mark3)
    student.add_mark(mark4)

    expect(student.marks.length).to eql(3)
    expect(student.marks[2].subject).to eql('English')
    expect(student.marks[2].value).to eql(5)
    expect(student.to_s).to eql('Anna: ["JavaScript: 4", "Java: 4", "English: 5"]')
  end
end
