class Content < ApplicationRecord
  belongs_to :user
  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true
  has_many :content_categories
  has_many :categories, through: :content_categories
end
