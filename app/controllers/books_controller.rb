class BooksController < ApplicationController


  def index
    @books = Book.all.order(:id)
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/:id'
  end

  def show
     @user = User.find(params[:id])
     @books = @user.books
  end


private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
