class Scraper::ScraperBase
  require 'open-uri'

  def initialize(url)
    @url = url
    @html = nil
    @charset = nil
  end

  def fetchHtml
    begin
      open(@url) do |f|
        @charset = f.charset
        f.read
      end
    rescue
      nil
    end
  end

  def parse
    raise 'undefined method parse'
  end

  def get_og_image
    raise 'undefined method get_og_image'
  end

end
