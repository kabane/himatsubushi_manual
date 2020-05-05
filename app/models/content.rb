class Content < ApplicationRecord
  belongs_to :user
  has_many :links
  has_many :content_categories
  has_many :categories, through: :content_categories
end
