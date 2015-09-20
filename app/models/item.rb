require_relative "../../lib/assets/estimate_calc"

class Item < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :name,  presence: true
  validates :requested, presence: true
  validates :address,  presence: true
  validates :zip,  presence: true,length: { maximum: 7 }
  
  def charity_requested
  	CharityOrg.find(requested)
  end
  
  def estimate_cost_for_charity(c)
  	begin
  		start_address = address.dup.concat(" ").concat(zip)
  		end_address = c.address.dup.concat(" ").concat(c.zip)
  		return EstimateCalc.new.getUberXPrice(start_address, end_address)
  	rescue
  		return "-1"
  	end
  end
  
end
