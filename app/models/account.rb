class Account < ApplicationRecord
    has_many :addresses
    validates :user_name, :password, :email, presence: true
    validates :user_name, length: { minimum: 5 }
    validates :user_name, :password, uniqueness: true
    validates :password, length: { minimum: 6 }

end
