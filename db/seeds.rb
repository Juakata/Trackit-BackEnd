# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
  username: 'Juakata',
  password: '123456',
  token: '',
)

User.create(
  username: 'Andoni',
  password: '123456',
  token: '',
)

Category.create(
  name: 'Networking',
  goal_time: 7200000,
  user_id: 1,
)

Category.create(
  name: 'Looking for job',
  goal_time: 7200000,
  user_id: 1,
)

Category.create(
  name: 'Coding Challenges',
  goal_time: 7200000,
  user_id: 1,
)

Category.create(
  name: 'Relaxing',
  goal_time: 7200000,
  user_id: 1,
)

Category.create(
  name: 'Networking',
  goal_time: 7200000,
  user_id: 2,
)

Category.create(
  name: 'Looking for job',
  goal_time: 7200000,
  user_id: 2,
)

Category.create(
  name: 'Coding Challenges',
  goal_time: 7200000,
  user_id: 2,
)

Category.create(
  name: 'Relaxing',
  goal_time: 7200000,
  user_id: 2,
)
