class Admin < ApplicationRecord
    has_secure_password
    has_many :gyms
    validates :adminname, presence: true, uniqueness: true, length:{maximum:20}
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, presence: true, length: { maximum: 20}
end
