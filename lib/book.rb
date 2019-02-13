class Book

  attr_reader :author_last_name,
              :author_first_name,
              :title,
              :publication_date

  def initialize(params)
    @author_first_name = params[:author_first_name]
    @author_last_name = params[:author_last_name]
    @title = params[:title]
    @publication_date = params[:publication_date]
    @publication_date = publication_date[-4..-1] 
  end

end
