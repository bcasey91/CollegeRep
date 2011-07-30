class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :major
      t.integer :class_year
      

      t.timestamps
    end
    add_index :people, :name
    add_index :people, :major
    add_index :people, :class_year
  end

  def self.down
    drop_table :people
  end
end
