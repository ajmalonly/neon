class CreateNeonSigns < ActiveRecord::Migration[7.2]
  def change
    create_table :neon_signs do |t|
      t.string :text
      t.string :font
      t.string :color
      t.string :image_url
      t.integer :size
      t.decimal :price

      t.timestamps
    end
  end
end
