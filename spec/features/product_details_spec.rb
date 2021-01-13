require 'rails_helper'

# test that users can navigate from the home page to the product detail page by clicking on a product.
RSpec.feature 'Visitor navigates to product detials page', type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |_n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario 'They see product details' do
    # visit root
    visit root_path
    # click on product
    first('article').click_link 'Details'
    # verify product page

    # VERIFY
    expect(page).to have_content 'Description'
    save_screenshot 'product_page.png'
  end
end
