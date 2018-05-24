class Author
  attr_reader :author,
              :books

  def initialize(author)
    @author = author
    @books = []
  end

end
