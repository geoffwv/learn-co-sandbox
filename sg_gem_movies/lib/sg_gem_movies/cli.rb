class CLI
  def run
    puts "Welcome to IMDB Openings!"
    puts "These are the movies opening this week:"
    puts " "
    puts ": ======================= :"
    puts " "
  
    Scraper.scrape_movies
    
    print_movies
    puts ""
    puts "Select the number of a movie to see further details or type 'exit' to exit"
    
    input = gets.strip.downcase
    while input != "exit" do
      movie = Movie.all[input.to_i - 1]
      Scraper.scrape_movie_details(movie)
      
    end
  end
  
  
  def print_movies
    Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
    end
  end
  
end