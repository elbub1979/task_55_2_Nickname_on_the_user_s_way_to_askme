class Question < ApplicationRecord
  after_commit :create_hashtags, on: :create

  belongs_to :user
  has_many :question_hashtag_relations, dependent: :destroy
  has_many :hashtags, through: :question_hashtag_relations

  private

  def create_hashtags
    hashtags = body.scan(/#[а-яА-Яa-zA-Z0-9]{2,}/).map(&:downcase)
    hashtags += answer.scan(/#[а-яА-Яa-zA-Z0-9]{2,}/).map(&:downcase) if answer.present?

    return if hashtags.empty?

    hashtags.each do |hashname|
      self.hashtags.find_or_create_by(hashname: hashname)
    end
  end
end
