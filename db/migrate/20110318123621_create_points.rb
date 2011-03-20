class CreatePoints < ActiveRecord::Migration
  def self.up
   create_table :points do |t|
     t.string :name
     t.decimal :distance
     t.decimal :elevation
     t.decimal :d1
     t.decimal :d2
     t.string :section
     t.references
     t.timestamps
  end
  end

  def self.down
    drop_table :points
  end
end
