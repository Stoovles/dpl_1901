require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def test_it_exists
  nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

  assert_instance_of Author, nk_jemisin
  end

  def test_books_initializes_empty
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

    assert_equal [], nk_jemisin.books
  end

  def test_it_can_add_books
    #should also test that it's the correct book and attributes
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    
    assert_instance_of Book, nk_jemisin.books.first

    nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")

    assert_instance_of Book, nk_jemisin.books[1]
  end
end
