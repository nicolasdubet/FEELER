class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :firstname
      t.string :lastname
      t.string :pseudo
      t.integer :number_of_followers
      t.string :language
      t.integer :age
      t.string :sex
      t.references :activity, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
