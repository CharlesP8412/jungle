# Jungle

A mini e-commerce application built with Rails 4.2 for the purposes of learning from an inherited code base.  Uses MVC design from Rails, built using EDD followed by test specs.

## Screenshots
!["Overview"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/home_page.png)
!["Home Page"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/home_page.png)
!["Cart"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/cart_page.png)
!["Admin Products"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/admin_products.png)
!["Promotions"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/promotions_page.png)



## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s` to start the server
If running in a VM such as Vagrant use `bin/rails s -b 0.0.0.0`


## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Faker
* bcrypt
* Rspec
* Capybara
* Stripe


## Rspec & Capybara Testing
To run all test use: `rspec --format documentation`

RSpec Test:
* Product Validations
* User Validations
* User Authentication

Capybara Specs:
* Home page renders
* Product Details Renders
* Item are added to the cart

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Features
- SPA Design with state of data.
  - Spots available will update as appointments are created or deleted
  - Error Handling on Save and Delete:
    - Will return to the appointment form when the message is closed

## Known Issues
- My Cart in nav bar only counts line items, not total items

## Planned Features
- Email receipt to user on checkout
- Product Ratings
- Inventory Adjustment
