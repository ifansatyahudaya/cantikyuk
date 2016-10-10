class CreateSalons < ActiveRecord::Migration[5.0]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
