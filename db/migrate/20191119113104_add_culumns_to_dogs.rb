class AddCulumnsToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :sex, :string
    add_column :dogs, :cuddly, :integer
    add_column :dogs, :energetic, :integer
    add_column :dogs, :obedient, :integer
    add_column :dogs, :couchpotato, :integer
  end
end
