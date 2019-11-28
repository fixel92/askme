class Question < ApplicationRecord

  belongs_to :user

  validates :text, :user, presence: true
  validates :text, presence: true, length: { maximum: 255 }
end
