class Character < ActiveRecord::Base
  attr_accessible :dob, :email, :is_male, :nickname, :title, :first_name, :last_name, :house_id, :order_id
  belongs_to :house
  belongs_to :order

  def full_name
    "#{first_name} #{last_name}"
  end

  def common_name
    unless nickname.blank?
      "#{first_name} \"#{nickname}\" #{last_name}"
    else
      full_name 
    end
  end
end
