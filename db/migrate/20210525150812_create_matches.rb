class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :influencer, null: false, foreign_key: true
      t.references :campaign, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
