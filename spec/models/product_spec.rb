require 'rails_helper'

# validate name, price, qty, category, all presence: true

RSpec.describe Product, type: :model do
  @params = {
    name: 'Hotdog Slicer',
    description: 'Faker::Hipster.paragraph(4)',
    quantity: 5,
    price: 26.00
  }
  it 'should have a name' do
    params = {
      name: 'Hotdog Slicer',
      description: 'Faker::Hipster.paragraph(4)',
      quantity: 5,
      price: 26.00
    }
    @product = Product.new(params)
    expect(@product.name).to be
  end
  it 'should have a price' do
    params = {
      name: 'Hotdog Slicer',
      description: 'Faker::Hipster.paragraph(4)',
      quantity: 5,
      price: 26.00
    }
    @product = Product.new(params)

    expect(@product.price).to be
  end
  it 'should have a qty' do
    params = {
      name: 'Hotdog Slicer',
      description: 'Faker::Hipster.paragraph(4)',
      quantity: 5,
      price: 26.00
    }
    @product = Product.new(params)
    expect(@product.quantity).to be
  end
  it 'should have a category' do
    params = {
      name: 'Hotdog Slicer',
      description: Faker::Hipster.paragraph(4),
      quantity: 5,
      category_id: 1,
      price: 26.00
    }
    @product = Product.new(params)
    expect(@product.category_id).to be
  end
end
