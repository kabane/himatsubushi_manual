class Scraper::NokogiriScraper < Scraper::ScraperBase
  def initialize(url)
    super
    @parser = Nokogiri::HTML
  end

  def parse
    @html = fetchHtml if @html.blank?
    @parser.parse(@html, @charset)
  end

  def get_og_image
    result = parse
    parse.css('//meta[property="og:image"]/@content').to_s if result.present?
  end
end
