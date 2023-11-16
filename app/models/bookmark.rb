class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6}
  validates :movie_id, uniqueness: { scope: :list_id, message: "Bookemark with this movie and list already exist"}
end
