class UsersController < ApplicationController
  
  def new
    @title = "Get Invited"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
end
