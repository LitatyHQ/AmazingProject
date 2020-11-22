class Cli #this file communicates w/my user, 

  def greeting
    puts " "
    puts "Kon'nichiwa anime enthusiast!"
    puts "To begin your adventure, enter 'begin'"
    puts "To exit your adventure, enter 'exit'"
    puts " "
    Api.get_data
    menu
  end

  def menu
    input = gets.strip.downcase

    if input == "begin"
        films_list 
        menu
    elsif input == "exit"
        puts " "
        exit_input
    else  
        invalid_entry
        menu
    end
  end

  def films_list
    Films.all.each_with_index do |film, index|
      puts "#{index + 1}. #{film.name}"
    end
    puts " "
    puts "Enter the film title that you would like to explore:"
    input = gets.strip

    film_selection(input)
  end

  def film_selection(film)
    a = Films.find_by_name(film) #the object that matched the film title
    if a
        display_film(a)
    else
        invalid_entry
    end
  end

  def display_film(film)
    puts "NAME: #{film.name}"
    puts "DIRECTOR: #{film.director}"
    puts "DESCRIPTION: #{film.description}"
    puts "RELEASE DATA: #{film.release_date}"
    puts "ROTTEN TOMATOES SCORE: #{film.rt_score}"
    puts " "
    sleep(0.4)
    puts "To select a different adventure enter 'begin', to exit enter 'exit'."
    menu
  end

  def invalid_entry
    sleep(0.2)
    puts " "
    puts "Not quite. Please enter 'begin' to get started or 'exit' to exit."
    puts " "
    menu
  end

  def exit_input
    puts " "
    puts "Once you've met someone you never really forget them."
    puts "See you again, friend."
  end
end