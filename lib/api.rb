class Api
    def self.get_data 
      response = RestClient.get("https://ghibliapi.herokuapp.com/films")
      film_array = JSON.parse(response)
      film_array.each do |film|
        Films.new(film["title"], film["description"], film["director"], film["release_date"], film["rt_score"])
      end
    end
end