class BooksController < ApplicationController
  def index
    @books = Book.all 
  end

  def new
  end

  def show
  end

  def create
    book = Book.create(book_params)
    redirect_to book_path(book)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

private
def book_params
  book_params = params.require(:movie).permit(:title, :tagline)
end
