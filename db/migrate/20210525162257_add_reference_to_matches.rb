class AddReferenceToMatches < ActiveRecord::Migration[6.0]
  def change
    add_reference :matches, :influencer, null: false, foreign_key: true
  end
end
