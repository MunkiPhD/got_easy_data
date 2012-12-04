class Order < ActiveRecord::Base
  attr_accessible :motto, :name
  has_many :characters
end
