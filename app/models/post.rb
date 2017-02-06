class Post < ApplicationRecord
  belongs_to :board
  belongs_to :user

  mount_uploader :image, BoardLogoUploader

end
