class UsersController < ApplicationController
before_action :baria_user, only: [:edit]
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
     @user = current_user
     @users = User.all
     @book = Book.new
  end

  def new
    @user = User.new
  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
   @user = User.find(params[:id])
    if @user.update(user_params)
     flash[:notice] ="you have updated user successfully"
     redirect_to user_path(@user.id)
    else
     render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def baria_user
    
      @user = User.find(params[:id])
        if @user.id != current_user.id
          redirect_to current_user
        
        else 
        render :edit
        end
  end
  
end
