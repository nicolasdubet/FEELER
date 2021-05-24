class Campaign < ApplicationRecord
  belongs_to :brand
  belongs_to :activity
end
