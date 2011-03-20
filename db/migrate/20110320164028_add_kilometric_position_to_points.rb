class AddKilometricPositionToPoints < ActiveRecord::Migration
  def self.up
    add_column :points, :kilometric_position, :string
  end

  def self.down
    remove_column :points, :kilometric_position
  end
end
