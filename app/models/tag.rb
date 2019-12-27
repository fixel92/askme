class Tag < ApplicationRecord
  has_and_belongs_to_many :questions

  validates :text, presence: true, format: /#[[:word:]-]+/e
end
