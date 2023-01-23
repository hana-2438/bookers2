class BooksController < ApplicationController


  def index
    @books = Book.all.order(:id)
    @book = Book.new
    @user = current_user
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/:id'
  end

  def show
    @book = Book.find(params[:id])

  end


private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
