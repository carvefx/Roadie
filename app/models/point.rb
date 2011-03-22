class Point < ActiveRecord::Base
  belongs_to :section
  validates_presence_of :name, :distance, :section
end
