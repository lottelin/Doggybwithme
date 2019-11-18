class AddAttributesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :postcode, :string
    add_column :users, :age, :integer
    add_column :users, :profession, :string
    add_column :users, :dog_preference, :string
  end
end
