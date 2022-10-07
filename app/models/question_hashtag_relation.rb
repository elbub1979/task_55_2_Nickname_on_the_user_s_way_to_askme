class QuestionHashtagRelation < ApplicationRecord
  belongs_to :question
  belongs_to :hashtag, dependent: :destroy

  with_options presence: true do
    validates :hashtag_id
    validates :question_id
  end
end
