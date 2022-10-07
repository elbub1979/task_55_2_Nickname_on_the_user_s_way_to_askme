class CreateQuestionHashtagRelations < ActiveRecord::Migration[7.0]
  def change
    create_table :question_hashtag_relations do |t|
      t.references :question, index: true, foreign_key: true
      t.references :hashtag, index: true, foreign_key: true
      t.timestamps
    end
  end
end
