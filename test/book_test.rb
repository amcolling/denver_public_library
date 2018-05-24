require './test/test_helper'
require './lib/book.rb'

class BookTest < Minitest::Test
  def test_it_exists
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_instance_of Book, book
  end

  def test_author_first_name
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "Harper", book.first_name
  end

  def test_author_last_name
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "Lee", book.last_name
  end

  def test_title
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "To Kill a Mockingbird", book.book_title
  end

  def test_publication_date
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "1960", book.book_publication_date
  end 

  # > book.author_first_name
  # # => "Harper"
  #
  # > book.author_last_name
  # # => "Lee"
  #
  # > book.title
  # # => "To Kill a Mockingbird"
  #
  # > book.publication_date
  # # => "1960"
end
