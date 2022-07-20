require_relative '../../task_8/task_2/retake_student'
require_relative '../../task_8/task_1/mark'

describe 'Marks and students - add_mark' do
  it 'should does\nt add subject if subject with this name already exist' do
    mark1 = Mark.new('JavaScript', 4)
    mark2 = Mark.new('Java', 4)
    mark3 = Mark.new('English', 5)
    mark4 = Mark.new('English', 2)

    student = RetakeStudent.new('Anna')

    student.add_mark(mark1)
    student.add_mark(mark2)
    student.add_mark(mark3)
    student.add_mark(mark4)

    expect(student.marks.length).to eql(3)
    expect(student.marks[2].subject).to eql('English')
    expect(student.marks[2].value).to eql(2)
    expect(student.to_s).to eql('Anna: ["JavaScript: 4", "Java: 4", "English: 2"]')
  end
end
