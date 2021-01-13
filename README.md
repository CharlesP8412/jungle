# Jungle

A mini e-commerce application built with Rails 4.2 for the purposes of learning from inheriting a legacy code base.  Uses MVC design from Rails, built using EDD followed by test specs for new features.

## Features
- Promotions can be scheduled and will automatically appear in a banner when they are active.
- Items will display 'Sold Out' when their quantity reaches zero. Occurs in all pages including admin.
- Admin Dashboard to show key stats of the store.


## Screenshots
!["Overview"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/overview.gif)
!["Home Page"](https://raw.githubusercontent.com/CharlesP8412/jungle/master/docs/home_page.png)
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
To run all test use: 
```
rspec --format documentation
```

RSpec Specs: | Capybara Specs:
-----------------------------------
Product Validations   |  Home page renders
User Validations      |  Product Details Renders
User Authentication   |  Item are added to the cart

### Stripe Testing
```
Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

```
More information in their docs: <https://stripe.com/docs/testing#cards>

## Known Issues
- My Cart in nav bar only counts line items, not total items

## Planned Features
- Email receipt to user on checkout
- Product Ratings
- Inventory Adjustment
- Sold out products summary in dashboard
