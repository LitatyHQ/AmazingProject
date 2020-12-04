class Cli  

  def greeting
    puts " "
    puts Rainbow("Kon'nichiwa anime enthusiast!").color(:lightsteelblue)
    puts Rainbow("To begin your adventure, enter 'begin'").color(:lightsteelblue)
    puts Rainbow("To exit your adventure, enter 'exit'").color(:lightsteelblue)
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
        exit_input
    else  
        invalid_entry
        menu
    end
  end

  def films_list
    Films.all.each_with_index do |film, index|
      puts "#{index + 1}." + Rainbow("#{film.name}").color(:mediumturquoise)
    end
    puts Rainbow("Enter the film title that you would like to explore:").color(:lightsteelblue)
    puts " "
    input = gets.strip

    film_selection(input)
  end

  def film_selection(film)
    a = Films.find_by_name(film)
    a ? display_film(a) : invalid_entry
  end

  def display_film(film)
    puts " "
    puts Rainbow("NAME:").color(:lightsteelblue) + Rainbow("#{film.name}").color(:cadetblue)
    puts Rainbow("DIRECTOR:").color(:lightsteelblue) + Rainbow("#{film.director}").color(:violet)
    puts Rainbow("DESCRIPTION:").color(:lightsteelblue) + "#{film.description}"
    puts Rainbow("RELEASE DATE:").color(:lightsteelblue) + Rainbow("#{film.release_date}").color(:cadetblue)
    puts Rainbow("ROTTEN TOMATOES SCORE:").color(:lightsteelblue) + Rainbow("#{film.rt_score}").color(:violet)
    puts " "
    sleep(0.4)
    puts Rainbow("To select a different adventure enter 'begin', to exit enter 'exit'.").color(:mediumturquoise)
    puts " "
    menu
  end

  def invalid_entry
    puts " "
    puts Rainbow("Not quite. Please enter 'begin' to get started or 'exit' to exit.").color(:lightsteelblue)
    puts " "
    menu
  end

  def exit_input
    puts " "
    puts Rainbow("Once you've met someone you never really forget them.").color(:sienna)
    puts Rainbow("See you again, friend.").color(:sienna)
    puts " "
    exit!
  end
end