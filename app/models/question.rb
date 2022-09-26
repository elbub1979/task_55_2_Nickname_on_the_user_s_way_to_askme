class Question < ApplicationRecord
  after_save :create_hashtags

  belongs_to :user
  has_and_belongs_to_many :hashtags, dependent: :destroy

  private

  def create_hashtags
    hashtags = body.scan(/#[а-яА-Яa-zA-Z0-9]{2,}/).map(&:downcase)
    hashtags += answer.scan(/#[а-яА-Яa-zA-Z0-9]{2,}/).map(&:downcase) if answer.present?

    return if hashtags.empty?

    hashtags.each do |hashtag|
      self.hashtags.create(hashtag: hashtag) unless self.hashtags.exists?(hashtag: hashtag)
    end
  end
end

