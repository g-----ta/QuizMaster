class UsersController < ApplicationController
  def login_form
    @new_button = true
    if @current_user != nil
      redirect_to("/")
    end
  end

  def login
    @user = User.find_by(name: params[:name])
    @new_button = true

    if params[:name].length == 0
      @error_message = "Please enter some user name."
      render("users/login_form")
    elsif @user != nil
      session[:user_id] = @user.id
      flash[:notice] = "You just Signed in."
      redirect_to("/")
    else
      @user = User.new(
        name: params[:name]
      )
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "You are registered."
      end
      redirect_to("/")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "You just Signed out."
    redirect_to("/login")
  end

end
