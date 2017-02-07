class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :content, presence: true, length: { minimum: 2, maximum: 10 }
end
