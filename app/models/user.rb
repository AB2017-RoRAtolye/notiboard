class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_relations
  has_many :boards, through: :user_relations

  has_many :owned_boards, -> { where(user_relations: {role: 'owner'}) }, through: :user_relations,
   class_name: "Board", source: :board

   has_many :subscribed_boards, -> { where(user_relations: {role: 'user'}) }, through: :user_relations,
    class_name: "Board", source: :board
end
