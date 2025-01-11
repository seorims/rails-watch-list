class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: {
    scope: [ :list_id ]
  }
  validates :comment, presence: true, length: { minimum: 6, message: "Comment must be at least 6 characters long" }
end

# movie_id is fine too for validation
