class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :brief
      t.string :country_code
      t.references :brand, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.string :language

      t.timestamps
    end
  end
end
