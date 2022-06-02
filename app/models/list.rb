class List < ApplicationRecord
	has_many :tasks, dependent: :destroy
  	belongs_to :profile

  enum :status, [:shipped, :being_packed, :complete, :cancelled]

  scope :created_before, ->(time) { where('created_at < ?', time) }
end

