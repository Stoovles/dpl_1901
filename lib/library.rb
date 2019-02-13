class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book[0]
  end

  def include?(title)
    @books.any? do |book|
      book.title == title
    end
  end

  def card_catalogue
    ordered_books = @books.sort_by do |book|
      book.author_last_name
    end
  end

end
