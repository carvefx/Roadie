class Point < ActiveRecord::Base
  validates_presence_of :name, :distance, :d1, :d2, :section
end
