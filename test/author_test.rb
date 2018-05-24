require './test/test_helper'
require "./lib/author"
require "./lib/book"

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
    book_1 = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal ({}), book_1
    book_2 = charlotte_bronte.add_book("Villette", "1853")
    assert_equal ({}), book_2
  end

  def test_add_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_instance_of Array, charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
  end
end
