class CharityOrgsController < ApplicationController
  def show
  end

  def create
    @charityorg = CharityOrg.new(charity_params)
      if @charityorg.save
        log_in @charityorg
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @charityorg
      else
        redirect_to controller: "main", action: "error"
      end
  end

  def charity_params
    params.require(:charity_org).permit(:email, :url, :password, :zip, :name, :address)
  end

end
