class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :evento

  validates :evento, uniqueness: { scope: :user }
end
