class Person < ActiveRecord::Base
  attr_accessible :email
  validates :email, :format => { :with => /[A-z]+\.[A-z]+/,
    :message => "Only like 'first_name.last_name'" }
end
