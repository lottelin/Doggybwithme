class AddCoordinatesToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :address, :string
    add_column :dogs, :city, :string
    add_column :dogs, :latitude, :float
    add_column :dogs, :longitude, :float
  end
end
