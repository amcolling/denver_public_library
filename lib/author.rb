require 'pry'
class Author
  attr_reader :author,
              :books

  def initialize(author)
    @author = author
    @books = []
  end

  def add_book(book, date)
    @books << Book.new
  end
  binding.pry

end
