class Account < ApplicationRecord
    validates :user_name, presence: true
end
