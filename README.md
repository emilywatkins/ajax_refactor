# Portfolio site

#### Rails Unit, exercise in Ruby, Rails, AJAX, refactoring existing project - 5.4.18

#### Emily Watkins

## Description

Simple e-commerce site

## Setup

rails 5.0.2
ruby 2.4.1

Clone this repository:

`$ bundle install`
`$ rails s`

Create database on local computer

`$ rails db:create`

Navigate to http://localhost:3000/

## Existing functionality
* User authentication and admin authorization - bcrypt
* Admin functionality only shown to admin, regardless if non-admin site user is logged in or not
* Basic e-commerce functionality - view products, add to cart, view cart, edit cart, finalize order.


## Refactored functionality
* AJAX implementation for adding items to cart and updating cart quantity in navbar, hide and show product details on click, remove from cart functionality.
* Validations for user and product models
* Some testing for those validations - rspec/shoulda matchers
* Order item validation to ensure product quantity is greater than 0
* Flash messages for signing up, signing in, signing out, and for admin CRUD
* Simple password validation for setting minimum password length
* CRUD functionality for admin, links hidden to users not logged in as admin


## Technologies Used

* Ruby
* Rails
* PostgreSQL
* rspec and shoulda matchers for testing
* bcrypt for auth and auth
* AJAX
* Materialize

## License

Licensed under the MIT License.

Copyright (c) 2018 Emily Watkins
