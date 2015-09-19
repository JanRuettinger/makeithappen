class ItemsController < ApplicationController

  def create
  @item=Item.new(item_params)
  @item.requested = 0
    if @item.save
      redirect_to controller: "main", action: "thank_you_show"
    else
      redirect_to controller: "main", action: "error"
    end
  end


  def item_params
    params.require(:item).permit(:name, :email, :address, :url, :zip, :description)
  end

end
