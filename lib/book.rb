class Book
attr_reader :book
  def initialize(book)
    @book = book
  end

  def first_name
    @book[:author_first_name]
  end

  def last_name
    @book[:author_last_name]
  end

  def book_title
    @book[:title]
  end

  def book_publication_date
  date = @book[:publication_date].split
    date[2]
  end

end
