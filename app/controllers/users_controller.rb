class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to phrases_path
    else
      render action: :new
    end
  end

end