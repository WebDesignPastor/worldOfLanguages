class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :correct_answer
      t.string :question_type
      t.integer :difficulty_level
      t.references :questionable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
