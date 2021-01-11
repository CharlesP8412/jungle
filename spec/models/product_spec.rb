require 'rails_helper'

# validate name, price, qty, category, all presence: true

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should have a name' do
      params = {
        name: 'Hotdog Slicer',
        quantity: 5,
        category_id: 1,
        price: 26.00
      }
      @product = Product.new(params)
      @product.save
      expect(@product.name).to be_present
    end
    it 'should have a price' do
      params = {
        name: 'Hotdog Slicer',
        quantity: 5,
        category_id: 1,
        price: 26.00
      }
      @product = Product.new(params)
      @product.save
      expect(@product.price).to be_present
    end
    it 'should have a qty' do
      params = {
        name: 'Hotdog Slicer',
        quantity: 5,
        category_id: 1,
        price: 26.00
      }
      @product = Product.new(params)
      @product.save
      expect(@product.quantity).to be_present
    end
    it 'should have a category' do
      params = {
        name: 'Hotdog Slicer',
        quantity: 5,
        category_id: 1,
        price: 26.00
      }
      @product = Product.new(params)
      @product.save
      expect(@product.category_id).to be_present
    end
    it 'should produce error if empty' do
      params = {
        quantity: 5,
        category_id: 1,
        price: 26.00
      }
      @product = Product.new(params)
      @product.save
      expect(@product.errors.full_messages).to be_present
    end
  end
end
