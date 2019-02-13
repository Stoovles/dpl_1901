class Author

  attr_reader :first_name,
              :last_name,
              :books

  def initialize(params) #when I call author, it gives more than just the object
    #I have a feeling I am supposed to approach this in a different way...
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name, publication_date: publication_date, title: title})
    @books << new_book
  end

end
