require_relative '../../task_8/task_4/book'
require_relative '../../task_8/task_4/author'

describe 'Author and book' do
  it 'should return correct information' do
    author1 = Author.new('Joan', 'Rowling', '')
    author2 = Author.new('Kate', 'Adams', 'Lian')
    author3 = Author.new('Kate', 'Adams', 'Lian')
    Author.new('____', 'Adams', 'Lian')

    book1 = Book.new('Book1', [author2], 'Edition1', 2021)
    book2 = Book.new('_', [author2, author1], 'Edition1', 2021)
    book3 = Book.new('Book3', [author2, author1], 'Edition1', 2021)
    book4 = Book.new('Book4', [author2, author3], 'Edition1', 2021)

    expect(Author.all.length).to eql(2)
    expect(book1.name).to eql('Book1')
    expect(book2.name).to eql(nil)
    expect(book3.name).to eql('Book3')
    expect(book4.name).to eql(nil)
  end
end
