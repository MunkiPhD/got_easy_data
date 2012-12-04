class House < ActiveRecord::Base
  attr_accessible :motto, :name, :seat, :sigil
  has_many :characters
end
