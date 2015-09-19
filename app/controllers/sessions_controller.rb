class SessionsController < ApplicationController

  #  def login
  #   Rails.logger.debug params.inspect
  #   if  @charityorg = CharityOrg.find_by_email(charity_params[:email])
  #     puts @charityorg.password
  #     if @charityorg.password == charity_params[:password]
  #       flash[:alert] = "Action performed successfully"
  #       redirect_to action: "thank_you_show"
  #       redirect_to root
  #     end
  #       flash[:alert] = "Action failed"
  #       redirect_to action: "donate_money_show"
  #   else
  #       flash.now[:alert] = "Action failed"
  #       redirect_to action: "thank_you_show"
  #   end
  # end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def new
  end

   def create
    charityorg = CharityOrg.find_by(email: params[:session][:email].downcase)
    if charityorg && charityorg.password == (params[:session][:password])
      log_in charityorg
      redirect_to charityorg
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      redirect_to root_url
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end




end
