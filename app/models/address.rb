class Address < ApplicationRecord
    belongs_to :accounts, optional: true
    validates :street_number, :street_name, :city, :state, :zip, presence: true
end
