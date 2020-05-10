class Content < ApplicationRecord
  belongs_to :user
  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true
  has_many :content_categories
  has_many :categories, through: :content_categories

  def link_images
    links.map do |link|
      link_scraper = Scraper::NokogiriScraper.new(link.url)
      link_scraper.parse
      link_scraper.get_og_image
    end.compact
  end
end
