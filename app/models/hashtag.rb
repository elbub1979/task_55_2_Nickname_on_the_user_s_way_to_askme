class Hashtag < ApplicationRecord
  before_validation :hashtag_downcase

  has_many :question_hashtag_relations
  has_many :questions, through: :question_hashtag_relations

  private

  def hashtag_downcase
    hashname&.downcase!
  end
end
