class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :first_name
      t.string :last_name
      t.string :pseudo
      t.integer :numberoffollower
      t.string :caracteristic
      t.integer :age
      t.string :language
      t.references :activity, null: false, foreign_key: true
      t.string :sex

      t.timestamps
    end
  end
end
