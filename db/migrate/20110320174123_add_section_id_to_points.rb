class AddSectionIdToPoints < ActiveRecord::Migration
  def self.up
    add_column :points, :section_id, :integer
  end

  def self.down
    remove_column :points, :section_id
  end
end
