class Character < ActiveRecord::Base
  attr_accessible :dob, :email, :is_male, :nickname, :title, :first_name, :last_name, :house_id, :order_id, :father, :mother

  belongs_to :house
  belongs_to :order

  has_many :relationships, :dependent => :destroy
  has_one :father, :through => :relationships
  has_one :mother, :through => :relationships

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

  # ----- relationships -----
  def build_father(father)
    relationships.build(:father => father, :relation_type => 'father')
  end

  def build_mother(mother)
    relationships.build(:mother => father, :relation_type => 'mother')
  end

  scope :children, lambda { |contact| joins (:relationships).\
    where(:relationships => { :relation_type => ['father', 'mother']})}

  def children
    self.class.children(self)
  end

  def siblings
    ((self.father ? self.father.children : []) +
     (self.mother ? self.mother.children : [])
    ).uniq - [self]
  end
end
