class PossibleitemsController < ApplicationController

  def calculateorder

    @items = []
    @cost = []
    itemsall = Item.all.where("requested = 0")
    itemsall.each do |item|
      c = item.estimate_cost_for_charity(current_charity())
      if c != "-1"
          @items.push(item)
          @cost.push(c)
      end
    end

  render :partial=>'possibleitems'

  end

end
