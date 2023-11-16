require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a user_name' do
    dalton = Account.create(
      # user_name: 'doeoo',
      password: '1234',
      email: 'daltonb@gmail.com'
    )
  expect(dalton.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without a password' do
    dalton = Account.create(
      user_name: 'dooo',
      # password: '1234',
      email: 'daltonb@gmail.com'
    )
  expect(dalton.errors[:password]).to_not be_empty
  end
  
  it 'is not valid without a email' do
    dalton = Account.create(
      user_name: 'dooo',
      password: '1234'
      # email: 'daltonb@gmail.com'
      )
      expect(dalton.errors[:email]).to_not be_empty
    end

    it 'is not valid if user_name is less than 5' do
      dalton = Account.create(
        user_name: 'ddro'
        # password: '1234',
        # email: 'daltonb@gmail.com'
      )
      expect(dalton.errors[:user_name]).to_not be_empty
  end
end