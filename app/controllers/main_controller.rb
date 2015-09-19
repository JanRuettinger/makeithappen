class MainController < ApplicationController

  def index
    @item=Item.new
    @charityorg = CharityOrg.new
  end

  def thank_you_show
  end

  def donate_money_show
  end

  def error
  end

end
