class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,	length: { maximum: 244 },
                    format: { with: VALID_EMAIL_REGEX },
                    # Rails infers that uniqueness should be true	 
                    uniqueness: { case_sensitive: false }
end
