class Content < ApplicationRecord
  belongs_to :user
  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true
  has_many :content_categories
  has_many :categories, through: :content_categories
  has_one_attached :thumbnail

  after_save :create_thumbnail

  validates :title, presence: true
  validates :description, presence: true

  def link_images
    links.map do |link|
      link_scraper = Scraper::NokogiriScraper.new(link.url)
      link_scraper.parse
      link_scraper.get_og_image
    end.reject(&:blank?)
  end

  private
  def create_thumbnail
    return if self.thumbnail.attached?
    image_urls = link_images

    image_url = image_urls.first
    tempfile = begin
                  open(image_url)
                rescue
                  nil
               end
    return if tempfile.blank? || !tempfile.is_a?(Tempfile)

    file_name = File.basename(URI.parse(image_url).path)
    file = File.open(tempfile)
    self.thumbnail.attach(io: file, filename: file_name)
  end
end
