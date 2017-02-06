class Board < ApplicationRecord
  mount_uploader :logo, BoardLogoUploader

  validates :title, presence: true
  validates :description, presence: true

  has_many :user_relations
  has_many :users, through: :user_relations
  has_many :owners, -> { where(user_relations: {role: 'owner'}) }, through: :user_relations,
   class_name: "User", source: :user
   has_many :subscribers, -> { where(user_relations: {role: 'user'}) }, through: :user_relations,
    class_name: "User", source: :user

  # def subscribers
  #   users.where(user_relations: {role: "user"})
  # end

  # def owners
  #   users.where(user_relations: {role: "owner"})
  # end


end
