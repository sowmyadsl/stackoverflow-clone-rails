class Question < ApplicationRecord
  validates :title, :content, :tags, :presence => true
end
