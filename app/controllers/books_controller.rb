class BooksController < ApplicationController
  def new
    @books = Books.new
  end

  def index
  end

  def show
     @user = User.find(params[:id])
     @books = @user.books
  end
end
