class Post < ApplicationRecord
    belongs_to :user
    
    validates :title, :summary, :body, presence: true
    validates :title, length: {minimum: 3, maximum: 50}
    validates :summary, length: {minimum: 10, maximum: 150}
    validates :body, length: {minimum: 20, maximum: 3000}
    validates :user_id, presence: true
end
