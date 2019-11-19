class RemovePersonalityFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :personality, :string
  end
end
