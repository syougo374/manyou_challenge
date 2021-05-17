FactoryBot.define do
  factory :task_label do
    task_id { Task.first }
    label_id { Label.first }
  end
#   factory :task_label2,class: Task_Label do
#     task_id {""}
#     label_id {""}
# end
end