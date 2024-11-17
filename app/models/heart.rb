class Heart < ApplicationRecord
  belongs_to :user
  belongs_to :exercise
  belongs_to :routine
end
