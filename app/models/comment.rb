class Comment < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :text, length: { minimum: 1 }
end
