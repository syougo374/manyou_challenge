User.create(
  name: "sample",
  email: "sample@example.com",
  password: "password",
  admin: true
  )

Label.create([
  { name: '喜' },
  { name: '怒' },
  { name: '哀'},
  { name: '楽'},
  ])

  

# i = 1
# 10.times do
#   name = ('a'..'z').to_a.shuffle[1..5].join
#   User.create(
#     name: name,
#     email: "#{i}@example.com",
#     password: "password",
#     admin: false
#   )
#   i += 1
# end


# 10.times do |i|
#   i = 1
#   d1 = Date.parse("2021/04/13")
#   d2 = Date.parse("2021/08/30")
#   date = Random.rand(d1..d2)
#   title = ('a'..'z').to_a.shuffle[1..11].join
#   content = ('A'..'Z').to_a.shuffle[1..15].join
#   status = Random.rand(1..2)
#   priority = Random.rand(1..2)
#   user_id = Random.rand(1..8)
#   Task.create(
#     title: title,
#     content: content,
#     endtime_at:  date,
#     status: status,
#     priority: priority,
#     user_id: user_id
#   )
  
# end

# task_id = 1
# 10.times do
#   label_id = Random.rand(1..9)
#   TaskLabel.create(
#     task_id: task_id,
#     label_id: label_id
#   )
#   task_id += 1
# end