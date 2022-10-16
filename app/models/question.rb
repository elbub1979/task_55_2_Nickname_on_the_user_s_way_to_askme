class Question < ApplicationRecord
  REGEXP_HASHTAG = /(?<=#)[а-яА-Яa-zA-Z0-9]{2,}/
  after_save_commit :create_hashtags

  belongs_to :user
  has_many :question_hashtag_relations, dependent: :destroy
  has_many :hashtags, through: :question_hashtag_relations

  private

  def create_hashtags
    hashtags = "#{body} #{answer}".scan(REGEXP_HASHTAG).map(&:downcase)

    self.hashtags = hashtags.map { |hashname| Hashtag.create_or_find_by(hashname: hashname) }
  end
end
