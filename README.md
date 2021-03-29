# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

**Project Perameters***
* Uses Ruby
* Has at leat ONE Has_Many ...at least one belongs_to ... and at least two has_many_through relationships
    * Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
* Must include reasonble validations to defend against invalid data (via errors)
* Must include at least one class level ActiveRecord scope method. 
    * a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).
* Must provide standard user authentication, including signup, login, logout, and passwords.   
* The authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
* Must include and make use of a nested resource with the appropriate RESTful URL
    * Must include a nested new route with form that relates to the parent resource
    * Must include a nested index or show route 
* The Forms should correctly display validation errors.
    * a. Your fields should be enclosed within a fieldswitherrors class
    * b. Error messages describing the validation failures must be present within the view.
* The application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
    * Logic present in your controllers should be encapsulated as methods in your models.
    * The views should use helper methods and partials when appropriate.
    * Follow patterns in the Rails Style Guide (Links to an external site.) and the Ruby Style Guide (Links to an external site.).
