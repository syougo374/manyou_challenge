class Label < ApplicationRecord
  belongs_to :task
  has_many :task_labels, dependent: :destroy
  has_many :tasks, through: :task_labels
  end
