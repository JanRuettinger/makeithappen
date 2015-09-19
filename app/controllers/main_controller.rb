class MainController < ApplicationController

  def index
    @item=Item.new
  end

  def create
  @item=Item.new(item_params)
    if @item.save
      redirect_to action: "thank_you_show"
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


end
