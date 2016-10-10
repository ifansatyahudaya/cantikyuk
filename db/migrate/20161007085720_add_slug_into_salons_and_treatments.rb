class AddSlugIntoSalonsAndTreatments < ActiveRecord::Migration[5.0]
  def change
    add_column :salons, :slug, :string
    add_column :treatments, :slug, :string

    add_index :salons, :slug, unique: true
    add_index :treatments, :slug, unique: true
  end
end
