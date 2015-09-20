class PossibleitemsController < ApplicationController

  def calculateorder

    @items = []
    @cost = []
    itemsall = Item.all.where("request = 0")
    itemsall.each |item| do
      c = item.estimate_cost_for_charity(current_charity())
      if c != "-1"
          @items.push(item)
          @cost.push(c)
      end
    end
  end

end
