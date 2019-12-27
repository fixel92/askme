class Tag < ApplicationRecord
  has_and_belongs_to_many :questions

  validates :text, presence: true, format: /#[[:word:]-]+/e

  before_validation :downcase_tag

  private

  def downcase_tag
    text.downcase!
  end
end
