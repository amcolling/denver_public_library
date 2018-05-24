require './test/test_helper'
require "./lib/author"

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_add_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    expected = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    assert_equal 
  end

end

# # => #<Book:0x007f98a9c6ace8 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="1847", @title="Jane Eyre">
#
# > charlotte_bronte.books
# # => [#<Book:0x007f98a9c6ace8 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="10/16/1847", @title="Jane Eyre">]
#
# > charlotte_bronte.add_book("Villette", "1853")
# # => #<Book:0x007f98a9c6ace8 @author_first_name="Charlotte", @author_last_name="Bronte", @publication_date="1847", @title="Villette">
#
