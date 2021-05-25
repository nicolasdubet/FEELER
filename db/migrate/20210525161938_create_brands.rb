class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :pseudo
      t.string :lastname
      t.string :firsname
      t.integer :size
      t.string :brand_name
      t.string :category
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
