class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to phrases_path
    else
      render action: :new
    end
  end

  def destroy
    user_session = UserSession.find
    user_session.destroy unless user_session.nil?
    redirect_to root_path
  end

end
