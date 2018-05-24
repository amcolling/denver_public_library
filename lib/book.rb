class Book
attr_accessor :book,
              :first_name,
              :last_name,
              :book_title,
              :book_publication_date
  def initialize(book)
    @first_name = book[:author_first_name]
    @last_name = book[:author_last_name]
    @book_title = book[:title]
    @book_publication_date = book[:publication_date]
  end


  def book_publication_date
  date = @book_publication_date.split
    date[2]
  end

end
