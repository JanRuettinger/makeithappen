class CharityOrgsController < ApplicationController
  def show
    @items = Item.all.where("requested = 0")

    # @items = calculate_requests(self)

    @charity = current_charity()
  end

  def create
    @charityorg = CharityOrg.new(charity_params)
      if @charityorg.save
        log_in @charityorg
        redirect_to @charityorg
      else
        render "main/index"
      end
  end

  def charity_params
    params.require(:charity_org).permit(:email, :url, :password, :zip, :name, :address)
  end

end
