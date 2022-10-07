class Hashtag < ApplicationRecord
  before_validation :hashtag_downcase

  has_many :question_hashtag_relations
  has_many :questions, through: :question_hashtag_relations

  validates :hashname, uniqueness: true

  def to_param
    hashname
  end

  private

  def hashtag_downcase
    hashname.downcase! if hashname.present?
  end
end
