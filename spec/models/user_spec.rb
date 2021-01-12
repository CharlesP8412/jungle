require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before do
      @user = User.new(first_name: 'John', last_name: 'Test', email: 'test@test.com', password: '1234', password_confirmation: '1234')
    end
    it 'Create user without error' do
      @user.save
      expect(@user.errors.full_messages).not_to be_present
    end
    it 'Mis-matched passwords produce an error' do
      @user.password = '1234'
      @user.password_confirmation = 'ABCD'
      @user.save
      expect(@user.errors.full_messages).to be_present
    end
    it 'Passwords cannot be blank' do
      @user.password = nil
      @user.password_confirmation = nil
      @user.save
      expect(@user.errors.full_messages).to be_present
    end
    it 'Email must be unique' do
      @user.save
      @user = User.new(first_name: 'John', last_name: 'Test', email: 'TEST@TEST.com', password: '1234', password_confirmation: '1234')
      @user.save
      # works with exact match but not uppercase
      expect(@user.errors.full_messages).to be_present
    end
    it 'Require First Name' do
      @user.first_name = nil
      @user.save
      expect(@user.errors.full_messages).to be_present
    end
    it 'Require Last Name' do
      @user.last_name = nil
      @user.save
      expect(@user.errors.full_messages).to be_present
    end
    it 'Password length must be >= 3 ' do
      @user.password = '12'
      @user.password_confirmation = '12'
      @user.save
      expect(@user.errors.full_messages).to be_present
    end
  end
  describe '.authenticate_with_credentials' do
    before do
      @user = User.new(first_name: 'John', last_name: 'Test', email: 'test@test.com', password: '1234', password_confirmation: '1234')
    end
    it 'returns nil on failed authentication ' do
      @user.save
      @user = @user.authenticate('wrong_password')
      expect(@user).not_to be_present
    end
    it 'returns user on passed authentication ' do
      @user.save
      @user = @user.authenticate('1234')
      expect(@user).to be_present
    end
    it 'ignores white spaces in email' do
      @user.email = '   test@test.com   '
      @user.save
      @user = @user.authenticate('1234')
      expect(@user).to be_present
    end
    it 'should ignore case in emails' do
      @user.email = 'TeTt@TEsT.coM'
      @user.save
      @user = @user.authenticate('1234')
      expect(@user).to be_present
    end
  end
end
