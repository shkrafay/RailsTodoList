class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :city
      t.string :state
      t.boolean :agreed

      t.timestamps
    end
  end
end
