class BooksController < ApplicationController
  
  def new
    @book = book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def show
     @book = Book.find(params[:id])
    
  end 
  def edit
    @user = user.find(params[:id])
  end
  def update
   @user = User.find(params[:id])
   @user.update(user_params)
   redirect_to user_path(@user.id)
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
