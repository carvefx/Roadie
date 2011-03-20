class AddHeightToPoints < ActiveRecord::Migration
  def self.up
    add_column :points, :height, :decimal
  end

  def self.down
    remove_column :points, :height
  end
end
