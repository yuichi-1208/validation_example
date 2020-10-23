class Blog < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: {message: "が空になっているぜ！"}
end
