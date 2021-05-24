class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :pseudo
      t.string :first_name
      t.string :last_name
      t.string :brand_name
      t.integer :size
      t.string :category

      t.timestamps
    end
  end
end
