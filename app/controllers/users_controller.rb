class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @user = current_user
    @users = User.all

  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def edit
  end

  def update
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
