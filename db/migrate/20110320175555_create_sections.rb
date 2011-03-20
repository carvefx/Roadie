class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :name
      t.decimal :length

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
