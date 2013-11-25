#Thoughtbubbles	

##installation steps

	rails new thoughtbubbles
	bundle install
	cd thoughtbubbles

Add devise and other gems to Gemfile

	gem 'devise'
	gem 'rmagick'
	gem 'carrierwave'

Bundle and install devise

	bundle install
	rails g devise:install
	rails g devise user

Perform devise specific maintenence:

* Add `action_mailer.default_url_options` to /config/environments/development
* Add devise alerts to `application.html.erb`
* Create controller and views for app `rails g controller Frontend index about`
* Route to index `root :to => 'frontend#index'`
* Rake `rake routes`

Add admin

	rails generate migration Add_Admin_To_Users admin:boolean
	

## Bubbles

Create a scaffold for bubbles

	rails g scaffold Bubbles title:string category:string thought:text url:string
	rake routes
	rake db:migrate
	
















