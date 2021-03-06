class CharityOrg < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :name,  presence: true
  validates :address,  presence: true
  validates :zip,  presence: true,length: { maximum: 7 }
  validates :password,  presence: true,length: { minimum: 3 }

end
