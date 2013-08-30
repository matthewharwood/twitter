class User < ActiveRecord::Base
  attr_accessible :email, :name
  email_regex = /\A[\w.]+@[a-z.\d.\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
  				   :length   => { :maximum => 50}
  validates :email, :presence => true,
  					:format => {:with => email_regex},
  					:uniqueness => {:case_sensitive => false}
  					#episode 36 http://www.youtube.com/watch?v=Ii-29WlTe-s&feature=share&list=PLVBFw0Pn9e9L7SOKtL8x4Av39drO5Oi-Q
end
