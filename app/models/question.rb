class Question < ApplicationRecord

  belongs_to :user
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :tags

  validates :text, :user, presence: true
  validates :text, presence: true, length: { maximum: 255 }
end
