class RemoveSectionLengthFromPoints < ActiveRecord::Migration
  def self.up
    remove_column :points, :section_length
    remove_column :points, :section
  end

  def self.down
    add_column :points, :section_length, :decimal
    add_column :points, :section, :string
  end
end
