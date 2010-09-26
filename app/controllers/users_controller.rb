class UsersController < ApplicationController
  
  def new
    @user = User.new
    @title = "Get Invited"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Ge Harris Wedding"
      redirect_to @user
    else
      @title = "Get Invited"
      render 'new'
    end
  end
end
