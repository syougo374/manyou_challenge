class Task < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :daytime, presence: true
  belongs_to :user
  has_many :task_labels, dependent: :destroy
  has_many :labels, through: :task_labels
  # default_scope -> { order(created_at: :desc) }
  enum status: { 未着手: 1, 着手: 2, 完了: 3 }
  enum priority: { 低: 1, 中: 2, 高: 3 }
  # enum label: { 喜: 1, 怒: 2, 哀: 3 , 楽: 4 }
  scope :search_title, -> (search_title) { where("title LIKE ?", "%#{search_title}%") }
  scope :search_status, -> (search_status) { where(status: search_status)}
  scope :search_priority, -> (search_priority) { where(priority: search_priority)}
  scope :search_label, -> (search_label) { joins(:labels).where(labels: { id: search_label })}

end
