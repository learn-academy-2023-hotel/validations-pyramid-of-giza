require 'rails_helper'

RSpec.describe Address, type: :model do
 it 'is not valid without a street_number' do
  address = Address.create (
  
  )
  expect(address.errors[:street_number]).to_not be_empty
 end
 it 'is not valid without a street_number' do
  address = Address.create (
  
  )
  expect(address.errors[:street_number]).to_not be_empty
 end
 it 'is not valid without a street_number' do
  address = Address.create (
  
  )
  expect(address.errors[:street_number]).to_not be_empty
 end
 it 'is not valid without a street_number' do
  address = Address.create (
  
  )
  expect(address.errors[:street_number]).to_not be_empty
 end

end
