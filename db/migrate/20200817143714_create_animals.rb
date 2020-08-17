class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :image_url
      t.string :personality
      t.string :quote
      t.string :icon_url
      t.string :species

      t.timestamps
    end
  end
end
