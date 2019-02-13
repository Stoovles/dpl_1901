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
    @books.sort_by do |book|
      book.author_last_name
    end
  end

  def find_by_author(author_full_name)
    binding.pry

    last_name = author_full_name.split[1]
    find_author = @books.group_by do |book|
      book.author_last_name == last_name
      book.title
    end
  end

  def find_by_publication_date(year)
  end

end
