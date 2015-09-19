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
        edirect_to action: "thank_you_show"
      else
        render "donate_money_show"
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
    params.require(:charityorg).permit(:email, :url, :password, :zip, :name, :address)
  end


end
