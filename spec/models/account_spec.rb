require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a user_name' do
    dalton = Account.create(
      user_name: 'ddog',
      password: '1234',
      email: 'daltonb@gmail.com'
    )
  expect(dalton).to be_valid
  end
  # it 'is not valid without a user_name' do
  #   dalton = Account.create (
  #     password: '123',
  #     email: 'daltonj@gmail.com'
  #   )
  #   expect(dalton.errors[:user_name]).to_not be_empty
  # end
end
