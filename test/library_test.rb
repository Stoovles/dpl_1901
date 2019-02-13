require './test/test_helper'
require './lib/library'
require './lib/author'
require './lib/book'
require 'pry'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_books_initializes_empty
    dpl = Library.new

    assert_equal [], dpl.books
  end

  def test_add_to_collection_adds_books_to_library
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    fifth_season = nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    kingdoms = nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")

    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
    dpl = Library.new
    dpl.add_to_collection(fifth_season)

    assert_instance_of Book, dpl.books[0]

    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(kingdoms)

    assert_instance_of Book, dpl.books[1]
    assert_instance_of Book, dpl.books[2]
  end

end
