class PossibleitemsController < ApplicationController

  def calculateorder

	print session[:charityorg_id]
	
    @items = []
    @cost = []
    itemsall = Item.all.where("requested = 0")
    itemsall.each do |item|
      c = item.estimate_cost_for_charity(CharityOrg.find_by(id: session[:charityorg_id]))
      print c
      if c != "-1"
          @items.push(item)
          @cost.push(c)
      end
    end

  render :partial=>'possibleitems'

  end

end
