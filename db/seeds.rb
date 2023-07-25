# Users
user1 = User.create(email: 'test1@example.com', password: 'password1', password_confirmation: 'password1')
user2 = User.create(email: 'test2@example.com', password: 'password2', password_confirmation: 'password2')

# UserProfiles
UserProfile.create(
  age: 25,
  native_language: 'English',
  language_proficiency: 'Beginner',
  preferred_content_type: 'Audio',
  preferred_topics: 'Business, Technology',
  previous_language_learning_experience: 'High school Spanish',
  goals: 'Become fluent in Spanish',
  learning_preferences: 'Visual learner',
  motivation_level: 'High',
  availability: 'Weekend evenings',
  user: user1
)

UserProfile.create(
  age: 30,
  native_language: 'Spanish',
  language_proficiency: 'Advanced',
  preferred_content_type: 'Video',
  preferred_topics: 'Science, Art',
  previous_language_learning_experience: 'College French',
  goals: 'Improve French listening skills',
  learning_preferences: 'Auditory learner',
  motivation_level: 'Medium',
  availability: 'Weekday mornings',
  user: user2
)

# Languages
language1 = Language.create(name: 'Spanish', difficulty_level: 2)
language2 = Language.create(name: 'French', difficulty_level: 3)

# Lessons
lesson1 = Lesson.create(language: language1)
lesson2 = Lesson.create(language: language2)

# UserLessons
UserLesson.create(user: user1, lesson: lesson1)
UserLesson.create(user: user2, lesson: lesson2)

# Exercises
Exercise.create(name: 'Exercise 1', lesson: lesson1)
Exercise.create(name: 'Exercise 2', lesson: lesson2)

# LessonContents
LessonContent.create(name: 'Content 1', lesson: lesson1)
LessonContent.create(name: 'Content 2', lesson: lesson2)

# LessonTests
LessonTest.create(name: 'Test 1', lesson: lesson1)
LessonTest.create(name: 'Test 2', lesson: lesson2)
