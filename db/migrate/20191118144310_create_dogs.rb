class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :user
      t.string :breed
      t.string :postcode
      t.string :personality
      t.string :age
      t.string :description
      t.string :photo
      t.integer :price

      t.timestamps
    end
  end
end
