class MainController < ApplicationController

  def index
    @item=Item.new
    @charityorg = CharityOrg.new
    
    @itemsRequested=Item.all.where("requested > 0")
    
  end

  def charityRequested(i)
  	requested = i.requested
  	return CharityOrg.find(requested)
  end
  
  def estimateCost(i)
  	start_address = (i.address).concat(i.zip)
  	end_address = charityRequested(i).address.concat(charityRequested(i).zip)
  	return EstimateCalc.new.getUberXPrice(start_address, end_address)
  end

  def thank_you_show
  end

  def donate_money_show
  end

  def error
  end

end
