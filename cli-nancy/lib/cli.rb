<<<<<<< HEAD
require 'nokogiri'
require 'open-uri'

def run
  puts "Welcome to IMDB Openings!"
  puts "These are the movies opening this week:"
  puts " "
  puts ": ======================= :"
  puts " "

  html = open("https://www.imdb.com/")
  doc = Nokogiri::HTML(html)
  movies = []
  doc.css("div.rhs-row").each do |mov|
    title = mov.css(".title").text.strip
    movies << title
  end

  movies.each.with_index(1) do |title, index|
    puts "#{index}. #{title}"
  end
  
end
=======
class CLI
  def run
    puts "Welcome to IMDB Openings!"
    puts "These are the movies opening this week:"
    puts " "
    puts ": ======================= :"
    puts " "
  
    Scraper.scrape_movies
    menu
    print_movies
  end
  
  def menu
  end
  
  def print_movies
    Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
  
end
>>>>>>> 2c66574e1d94402be1e439ca808581b41b3557c4
