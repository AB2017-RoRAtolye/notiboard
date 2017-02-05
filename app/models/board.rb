class Board < ApplicationRecord
  mount_uploader :logo, BoardLogoUploader

  validates :title, presence: true
  validates :description, presence: true

end
