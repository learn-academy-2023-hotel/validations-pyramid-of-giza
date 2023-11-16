class Account < ApplicationRecord
    validates :user_name, :password, :email, presence: true
    validates :user_name, length: { minimum: 5 }

end
