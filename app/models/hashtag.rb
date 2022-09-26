class Hashtag < ApplicationRecord
  before_validation :hashtag_downcase

  has_and_belongs_to_many :questions

  validates :hashtag, uniqueness: true

  private

  def hashtag_downcase
    hashtag.downcase! if hashtag.present?
  end
end
