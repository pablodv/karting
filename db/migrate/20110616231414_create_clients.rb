class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.integer :code
      t.string :first_name
      t.string :last_name
      t.integer :document
      t.string :gender

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
