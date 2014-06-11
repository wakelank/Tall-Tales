class BooksController < ApplicationController
  def index
  end

  def new
  end

  def show
    @book = book.find(params[:id]
  end

  def create
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
  end


private

def book_params
  params.require(:book).permit(:title, :author)
end
