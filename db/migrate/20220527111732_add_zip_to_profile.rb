class AddZipToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :zip, :string
  end
end
