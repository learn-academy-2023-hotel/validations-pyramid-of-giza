class Address < ApplicationRecord
    belongs_to :account, optional: true
    validates :street_number, presence: true
end
