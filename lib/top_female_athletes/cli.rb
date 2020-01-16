

class TopFemaleAthletes::CLI 
  
  def call      
    puts "Top Female Athletes!"
  athletes_list
    start 
    goodbye
  end  
  
  def athletes_list

    # puts "Athlete list"
    @athlete_list = TopFemaleAthletes::Athlete_List.list 
  end 
  
  def start
   
    
    input = nil 
    while input!= "exit"
     puts "Enter the index number of the athlete you want to learn more about or type list to see list of the athlete or type exit to enter"
    input = gets.strip.downcase
    
    if input.to_i > 0 
      puts @athlete_list[input.to_i-1]
    # case input 
    # when "1"
    #   puts "More information on Athlete..."
    #   when "2"
    #     puts "More information on Athlete 2"
        if input == "list"
          puts athletes_list
        else 
          puts "Not sure what you want, type list or exit"
       end 
     end 
  end 
end 
  
  def goodbye
    puts "goodbye have a nice day!"
  end 
  
end 
  
