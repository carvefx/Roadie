class AddSectionLengthToPoints < ActiveRecord::Migration
  def self.up
    add_column :points, :section_length, :decimal
  end

  def self.down
    remove_column :points, :section_length
  end
end
