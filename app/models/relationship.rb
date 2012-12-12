class Relationship < ActiveRecord::Base
  attr_accessible :character_id, :relation_id, :relation_type, :father, :mother
  belongs_to :character
  belongs_to :father, 
    :foreign_key => :relation_id, 
    :class_name => "Character",
    :conditions => {
      :relationships => { 
        :relation_type => 'father'}}
  belongs_to :mother, 
    :foreign_key => :relation_id, 
    :class_name => "Character",
    :conditions => {
      :relationships => { 
        :relation_type => 'mother'}}
end
