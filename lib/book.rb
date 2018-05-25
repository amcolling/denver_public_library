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
    @book_publication_date = format_date(book[:publication_date][-4..-1])
  end


  def book_publication_date
    format_date(-1..-4)
  end

end
