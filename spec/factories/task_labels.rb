FactoryBot.define do
  factory :task_label do
    task_id { Task.first }
    label_id { Label.first }
  end
end
