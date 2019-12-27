class Question < ApplicationRecord

  TAGPATTERN = /#[[:word:]-]+/u

  belongs_to :user
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :tags

  validates :text, :user, presence: true
  validates :text, presence: true, length: { maximum: 255 }

  before_save :add_tags
  before_update :add_tags

  private

  def add_tags
    tags.clear
    tags << create_tags
  end

  def create_tags
    tags = text.scan(TAGPATTERN)
    tags += answer.scan(TAGPATTERN) unless answer.nil?
    tags.map(&:downcase).uniq.map do |item|
      Tag.create_or_find_by(text: item.encode('EUC-JP'))
    end
  end

end
