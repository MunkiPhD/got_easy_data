class House < ActiveRecord::Base
  attr_accessible :motto, :name, :seat, :sigil, :castle_id
  has_many :characters
  belongs_to :castle
end
