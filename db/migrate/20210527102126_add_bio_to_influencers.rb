class AddBioToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :bio, :text
  end
end
