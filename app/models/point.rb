class Point < ActiveRecord::Base
  belongs_to :section
  validates_presence_of :name, :distance, :d1, :d2, :section, :height
end
