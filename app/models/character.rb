class Character < ActiveRecord::Base
  attr_accessible :dob, :email, :is_male, :nickname, :title
  belongs_to :house
  belongs_to :order
end
