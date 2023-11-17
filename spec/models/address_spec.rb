require 'rails_helper'

RSpec.describe Address, type: :model do
it 'is not valid without a street_number' do
address = Address.create(
    street_name: 'bowl',
    city: 'san diego',
    state: 'CA',
    zip: 111111
)
expect(address.errors[:street_number]).to_not be_empty
end
it 'is not valid without a street_name' do
address = Address.create(
    street_number: 555,
    # street_name: 'bowl'
    city: 'san diego',
    state: 'CA',
    zip: 111111

)
expect(address.errors[:street_name]).to_not be_empty
end

it 'is not valid without a city' do
address = Address.create(
    street_number: 555,
    # city: 'san diego',
    street_name: 'bowl',
    state: 'CA',
    zip: 111111
)
expect(address.errors[:city]).to_not be_empty
    end


it 'is not valid without a zip' do
address = Address.create(
    street_number: 555,
    city: 'san diego',
    street_name: 'bowl',
    state: 'CA',
    zip: 111111

)
expect(address.errors[:zip]).to_not be_empty
end

end
