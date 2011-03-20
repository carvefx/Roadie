class Section < ActiveRecord::Base
  has_many :points
  validates_presence_of :name, :length
end
