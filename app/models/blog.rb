class Blog < ApplicationRecord
    belongs_to :topic
    validates_presence_of :title, :body
    validates :title, length: { minimum: 5 }
    validates :body, length: { minimum: 10 }
    validates :title, uniqueness: true
    validates :body, uniqueness: true
    validates :topic_id, presence: true
    validates :topic_id, numericality: { only_integer: true }
    #validates :topic_id, inclusion: { in: Topic.pluck(:id) }
    # validates :topic_id, inclusion: { in: Topic.pluck(:id) }
end
