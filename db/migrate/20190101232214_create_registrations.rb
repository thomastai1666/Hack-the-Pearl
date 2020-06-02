class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :organization
      t.string :linked_in
      t.string :email
      t.string :cv
      t.string :resume
      t.boolean :accepted
      
      t.timestamps
    end
  end
end
