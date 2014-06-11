class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
   @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.create(book_params)
    redirect_to book_path(book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    edit_book = Book.find(params[:id])
    edit_book.update(book_params)
    redirect_to "/books/#{book.id}"
  end

  def destroy
    Book.delete(params[:id])
    redirect_to "/books/#{book.id}"
  end


  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end

