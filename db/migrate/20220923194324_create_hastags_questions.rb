class CreateHastagsQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags_questions, id: false do |t|
      t.bigint :question_id
      t.bigint :hashtag_id
    end

    add_index :hashtags_questions, :questions_id
    add_index :hashtags_questions, :question_id
  end
end
