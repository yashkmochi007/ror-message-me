class Message < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :body, presence: true, length: { minimum: 1, maximum: 256 }
  scope :fetch_latest, -> { order(:created_at).last(20) }
end
