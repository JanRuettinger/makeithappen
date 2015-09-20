class PossibleitemsController < ApplicationController

  def calculateorder

	print session[:charityorg_id]
	
    @items = []
    itemsall = Item.all.where("requested = 0")
    itemsall.each do |item|
      c = item.estimate_cost_for_charity(CharityOrg.find_by(id: session[:charityorg_id]))
      print c
      item.estimate_cost_cached = c
      item.save
      if c != "-1"
          @items.push(item)
      end
    end
	
	render :partial=>'possibleitems'

  end

end
