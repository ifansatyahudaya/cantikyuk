class CreateOperators < ActiveRecord::Migration[5.0]
  def change
    create_table :operators do |t|
      t.string :name
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
