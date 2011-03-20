class AddKilometricPositionCorrectedToPoints < ActiveRecord::Migration
  def self.up
    add_column :points, :kilometric_position_corrected, :string
  end

  def self.down
    remove_column :points, :kilometric_position_corrected
  end
end
