class CreateSalonImages < ActiveRecord::Migration[5.0]
  def change
    create_table :salon_images do |t|
      t.string :image
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
