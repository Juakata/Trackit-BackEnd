FactoryBot.define do
  factory :category do
    trait :net do
      id { 1 }
      name { 'Networking' }
      goal_time { 750000 }
      user_id { 1 }
    end

    trait :look do
      id { 2 }
      name { 'Looking for job' }
      goal_time { 750000 }
      user_id { 1 }
    end

    trait :cod do
      id { 3 }
      name { 'Coding Challenges' }
      goal_time { 750000 }
      user_id { 1 }
    end

    trait :rel do
      id { 4 }
      name { 'Relaxing' }
      goal_time { 750000 }
      user_id { 1 }
    end
  end
end
