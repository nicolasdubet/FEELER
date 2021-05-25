class Influencer < ApplicationRecord
  belongs_to :activity

  # validates :pseudo, presence:, uniqueness: true



# :first_name
# :last_name
# :pseudo
# :numberoffollower
# :caracteristic
# :age
# :language
# :activity, null: false, foreign_key: true
# :sex
end
