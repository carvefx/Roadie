class AddDistanceCorrectedToPoints < ActiveRecord::Migration
  def self.up
    add_column :points, :distance_corrected, :decimal
  end

  def self.down
    remove_column :points, :distance_corrected
  end
end
