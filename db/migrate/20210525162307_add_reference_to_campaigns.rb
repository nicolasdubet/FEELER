class AddReferenceToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_reference :campaigns, :brand, null: false, foreign_key: true
  end
end
