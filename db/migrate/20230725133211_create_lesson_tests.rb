class CreateLessonTests < ActiveRecord::Migration[7.0]
  def change
    create_table :lesson_tests do |t|
      t.string :name
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
