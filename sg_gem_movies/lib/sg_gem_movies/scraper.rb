class Scraper
  
  def self.scrape_movies
    html = open("https://www.imdb.com/")
    doc = Nokogiri::HTML(html)
    
    doc.css("div.rhs-body")[0].css("div.rhs-row").each do |mov|
      movie = Movie.new
      movie.title = mov.css(".title").text.strip
      movie.url = mov.css("a").attribute("href").value
    end
  end
  
  def self.scrape_movie_details(movie)
    html = open("https://www.imdb.com#{movie.url}")
    doc = Nokogiri::HTML(html)
    movie.director = doc.css("div.credit_summary_item")[0].css("a").text

  end
  
  
  
end