class Castle < ActiveRecord::Base
  attr_accessible :name, :ruined

  has_one :house
end
