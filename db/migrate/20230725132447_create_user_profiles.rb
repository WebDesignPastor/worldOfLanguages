class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.integer :age
      t.string :native_language
      t.string :language_proficiency
      t.string :preferred_content_type
      t.text :preferred_topics
      t.string :previous_language_learning_experience
      t.text :goals
      t.string :learning_preferences
      t.string :motivation_level
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
