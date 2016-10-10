class CreateTreatments < ActiveRecord::Migration[5.0]
  def change
    create_table :treatments do |t|
      t.string :name
      t.integer :duration
      t.float :price
      t.references :category_treatment
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
