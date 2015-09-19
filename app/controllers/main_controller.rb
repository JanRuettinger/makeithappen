class MainController < ApplicationController

  def index
    @item=Item.new
    @charityorg = CharityOrg.new
  end

  def create_item
  @item=Item.new(item_params)
    if @item.save
      redirect_to action: "thank_you_show"
    else
      render "donate_money_show"
    end
  end

  def create_charityorg
    @charityorg = CharityOrg.new(charity_params)
      if @charityorg.save
        redirect_to action: "thank_you_show"
      else
        render "donate_money_show"
      end
  end

  def login
    Rails.logger.debug params.inspect
    if  @charityorg = CharityOrg.find_by_email(charity_params[:email])
      puts @charityorg.password
      if @charityorg.password == charity_params[:password]
        flash[:alert] = "Action performed successfully"
        redirect_to action: "thank_you_show"
        redirect_to root
      end
        flash[:alert] = "Action failed"
        redirect_to action: "donate_money_show"
    else
        flash.now[:alert] = "Action failed"
        redirect_to action: "thank_you_show"
    end
  end

  def thank_you_show
  end

  def donate_money_show

  end

  def item_params
    params.require(:item).permit(:name, :email, :address, :url, :zip, :description)
  end

  def charity_params
    params.require(:charity_org).permit(:email, :url, :password, :zip, :name, :address)
  end


end
